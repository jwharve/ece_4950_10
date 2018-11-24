classdef Control
    properties
        tg
        angle
        out_steps
        % constants
        pickup_steps
        dist2steps
    end
    methods
        function obj = control()
            if ~exist('tg') % check to see if the target is already built
                rtwbuild('model');
            end
            % load and start model
            tg.load('model');
            tg.start;
            obj.tg = tg;
            
            obj.angle = 0;
            obj.out_steps = 0;
            % constants
            obj.pickup_steps = 1;
            obj.dist2steps = 1;
            
        end
        
        function [] = arm_done(obj)
            i = 0;
            thresh = 3;
            prev2 = getsignal(obj.tg,'switching logic');
            prev = getsignal(obj.tg,'switching logic');
            while (abs(prev - obj.angle) > thresh && abs(prev2 - obj.angle) > thresh)
                i = i + 1;
                if i > 5000
                    fprintf('Couldn''t reach threshold\n');
                    break;
                end
                prev2 = prev;
                prev = getsignal(obj.tg,'switching logic');
            end
        end
        
        function [] = arm_pos(obj,position)
            obj.angle = position;
            obj.tg.setparam(obj.tg.getparamid('Position','Value'),obj.angle)
        end
        
        function [] = claw(obj,state)
            if state == open
                obj.tg.setparam(obj.tg.getparamid('oc','Value'),1)
            else
                obj.tg.setparam(obj.tg.getparamid('oc','Value'),0)
            end
        end
        
        function [] = step_out(obj,step_pos)
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
            % disable
            obj.tg.setparam(obj.tg.getparamid('stepper_out/enable','Value'),0);
            % set direction
            obj.tg.setparam(obj.tg.getparamid('stepper_out/my_dir','Value'),dir);
            % set num steps
            obj.tg.setparam(obj.tg.getparamid('stepper_out/switch','Threshold'),num_steps);
            % enable
            obj.tg.setparam(obj.tg.getparamid('stepper_out/enable','Value'),1);
        end
        
        function [] = step_down(obj,state)
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
        
        function [] = stepper_done(obj)
            while (getsignal(obj.tg,'stepper_out/Sum') < obj.out_steps); end
        end
    end
end