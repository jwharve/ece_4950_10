classdef Control < handle
    properties
        tg
        angle
        out_steps
        diff_out_steps
        down_state
        time
        % constants
        pickup_steps
        dist2steps
        motor_loc
        corner_loc
        boardWidth
    end
    methods
        function obj = Control()
            rtwbuild('model');
            tg = SimulinkRealTime.target;
            % load and start model
            tg.load('model');
            tg.start;
            obj.tg = tg;
            
            obj.angle = 0;
            obj.out_steps = 0;
            obj.down_state = up;
            
            obj.time = 0;
            
            % constants
            obj.pickup_steps = 1100;
            obj.dist2steps = 1;
            
            obj.corner_loc = [186 100];
            obj.boardWidth = 365;
            squareWidth = obj.boardWidth/numSquares;
            obj.motor_loc = [-2.5*squareWidth -2.5*squareWidth];
        end
        
        function arm_done(obj)
            i = 0;
            thresh = 3;
            prev2 = -getsignal(obj.tg,'sw_log/Sum2');
            pause(1);
            prev = -getsignal(obj.tg,'sw_log/Sum2');
            while (abs(prev - obj.angle) > thresh && abs(prev2 - obj.angle) > thresh)
                i = i + 1;
                if i > 5000
                    fprintf('Couldn''t reach threshold\n');
                    break;
                end
                prev2 = prev;
                prev = -getsignal(obj.tg,'sw_log/Sum2');
                pause(1);
            end
        end
        
        function arm_pos(obj,position)
            obj.angle = position;
            obj.tg.setparam(obj.tg.getparamid('Position','Value'),obj.angle)
        end
        
        function claw(obj,state)
            if state == opened
                obj.tg.setparam(obj.tg.getparamid('o_c','Value'),0)
            elseif state == 5
                obj.tg.setparam(obj.tg.getparamid('o_c','Value'),2)
            else
                obj.tg.setparam(obj.tg.getparamid('o_c','Value'),1)
            end
        end
        
        function step_out(obj,step_pos)
            if step_pos < obj.out_steps
                dir = in;
                num_steps =  obj.out_steps - step_pos;
            else
                dir = out;
                num_steps = step_pos - obj.out_steps;
            end
            % wait for stepper to stop moving
            obj.stepper_done;
            % update variable
            obj.out_steps = step_pos;
            obj.diff_out_steps = num_steps;
            % disable
            obj.tg.setparam(obj.tg.getparamid('stepper_out/enable','Value'),0);
            % set direction
            obj.tg.setparam(obj.tg.getparamid('stepper_out/my_dir','Value'),dir);
            % set num steps
            obj.tg.setparam(obj.tg.getparamid('stepper_out/switch','Threshold'),num_steps);
            % enable
            obj.tg.setparam(obj.tg.getparamid('stepper_out/enable','Value'),1);
        end
        
        function step_down(obj,state)
            if obj.down_state == state
                return
            end
            obj.down_state = state;
            % disable
            obj.tg.setparam(obj.tg.getparamid('stepper_down/enable','Value'),0);
            % set direction
            obj.tg.setparam(obj.tg.getparamid('stepper_down/my_dir','Value'),state);
            % set num steps
            obj.tg.setparam(obj.tg.getparamid('stepper_down/switch','Threshold'),obj.pickup_steps);
            % enable
            obj.tg.setparam(obj.tg.getparamid('stepper_down/enable','Value'),1);
            % wait to move
            while (getsignal(obj.tg,'stepper_down/Sum') < obj.pickup_steps); end
        end
        
        function stepper_done(obj)
            while (getsignal(obj.tg,'stepper_out/Sum') < obj.diff_out_steps); end
        end
        
        function steps = p2s(obj,pixels)
            steps_across = 420;
            spp = steps_across/(sqrt(2)*obj.boardWidth);
            steps = pixels*spp;
            steps = steps - sqrt((obj.motor_loc(1))^2+(obj.motor_loc(2))^2)*spp + 20;
            if steps < 0
                steps = 0;
            end
            if steps > 420
                steps = 420;
            end
        end
        
        function hit_load(obj)
            obj.arm_pos(10);
            obj.step_out(120);
            obj.stepper_done;
            obj.claw(5);
            obj.arm_done;
            obj.arm_pos(-3);
            while (obj.read_load < 0.9)
                
            end
            obj.time = toc;
            pause(2);
            obj.arm_pos(10);
        end
        
        function ret = read_load(obj)
            ret = getsignal(obj.tg,'load_cell');
        end
        function delete(obj)
            obj.step_out(0);
            obj.arm_pos(0);
            obj.step_down(up);
            obj.claw(opened)
            obj.stepper_done;
            obj.arm_done;
            obj.tg.stop;
        end
        
    end
end