function xcp = bakupxcp

xcp.events     =  repmat(struct('id',{}, 'sampletime', {}, 'offset', {}), getNumEvents, 1 );
xcp.parameters =  repmat(struct('symbol',{}, 'size', {}, 'dtname', {}, 'baseaddr', {}), getNumParameters, 1 );
xcp.signals    =  repmat(struct('symbol',{}), getNumSignals, 1 );
xcp.models     =  cell(1,getNumModels);
    
xcp.models{1} = 'bakup';
   
   
         
xcp.events(1).id         = 0;
xcp.events(1).sampletime = 0.0001;
xcp.events(1).offset     = 0.0;
         
xcp.events(2).id         = 1;
xcp.events(2).sampletime = 0.001;
xcp.events(2).offset     = 0.0;
    
xcp.signals(1).symbol =  'bakup_B.low';
    
xcp.signals(2).symbol =  'bakup_B.high';
    
xcp.signals(3).symbol =  'bakup_B.Switch';
    
xcp.signals(4).symbol =  'bakup_B.Derivative1';
    
xcp.signals(5).symbol =  'bakup_B.Gain';
    
xcp.signals(6).symbol =  'bakup_B.Kd';
    
xcp.signals(7).symbol =  'bakup_B.Ki';
    
xcp.signals(8).symbol =  'bakup_B.Kp';
    
xcp.signals(9).symbol =  'bakup_B.Setpoint';
    
xcp.signals(10).symbol =  'bakup_B.Integrator1';
    
xcp.signals(11).symbol =  'bakup_B.RateLimiter';
    
xcp.signals(12).symbol =  'bakup_B.Q4DI';
    
xcp.signals(13).symbol =  'bakup_B.load_cell';
    
xcp.signals(14).symbol =  'bakup_B.ErrorSignal';
    
xcp.signals(15).symbol =  'bakup_B.Sum4';
    
xcp.signals(16).symbol =  'bakup_B.angular_positionrelative_countC';
    
xcp.signals(17).symbol =  'bakup_B.Saturation';
    
xcp.signals(18).symbol =  'bakup_B.Channel0ofEncoderInputs';
    
xcp.signals(19).symbol =  'bakup_B.BackemfKe1';
    
xcp.signals(20).symbol =  'bakup_B.Dampingb1';
    
xcp.signals(21).symbol =  'bakup_B.GainKt2';
    
xcp.signals(22).symbol =  'bakup_B.GainKt3';
    
xcp.signals(23).symbol =  'bakup_B.Inductance';
    
xcp.signals(24).symbol =  'bakup_B.ResistanceR1';
    
xcp.signals(25).symbol =  'bakup_B.Integrator1_h';
    
xcp.signals(26).symbol =  'bakup_B.Integrator5';
    
xcp.signals(27).symbol =  'bakup_B.Integrator6';
    
xcp.signals(28).symbol =  'bakup_B.Sum1';
    
xcp.signals(29).symbol =  'bakup_B.Sum2_e';
    
xcp.signals(30).symbol =  'bakup_B.complementtheinput';
    
xcp.signals(31).symbol =  'bakup_B.Product';
    
xcp.signals(32).symbol =  'bakup_B.Product1';
    
xcp.signals(33).symbol =  'bakup_B.my_dir_j';
    
xcp.signals(34).symbol =  'bakup_B.step_pulse_h';
    
xcp.signals(35).symbol =  'bakup_B.Product_c';
    
xcp.signals(36).symbol =  'bakup_B.Product1_c';
    
xcp.signals(37).symbol =  'bakup_B.Sum_f';
    
xcp.signals(38).symbol =  'bakup_B.switch_a';
    
xcp.signals(39).symbol =  'bakup_B.UnitDelay_o';
    
xcp.signals(40).symbol =  'bakup_B.my_dir';
    
xcp.signals(41).symbol =  'bakup_B.step_pulse';
    
xcp.signals(42).symbol =  'bakup_B.Product_h';
    
xcp.signals(43).symbol =  'bakup_B.Product1_a';
    
xcp.signals(44).symbol =  'bakup_B.Sum';
    
xcp.signals(45).symbol =  'bakup_B.switch_m';
    
xcp.signals(46).symbol =  'bakup_B.UnitDelay_b';
    
xcp.signals(47).symbol =  'bakup_B.complementtheinput1';
    
xcp.signals(48).symbol =  'bakup_B.Product2';
    
xcp.signals(49).symbol =  'bakup_B.Product3';
    
xcp.signals(50).symbol =  'bakup_B.Sum2';
    
xcp.signals(51).symbol =  'bakup_B.clock';
    
xcp.signals(52).symbol =  'bakup_B.Product_b';
    
xcp.signals(53).symbol =  'bakup_B.RelationalOperator';
    
xcp.signals(54).symbol =  'bakup_B.SumofElements';
    
xcp.signals(55).symbol =  'bakup_B.UnitDelay';
    
xcp.signals(56).symbol =  'bakup_B.FixPtRelationalOperator_j';
    
xcp.signals(57).symbol =  'bakup_B.Uk1_a';
    
xcp.signals(58).symbol =  'bakup_B.FixPtRelationalOperator';
    
xcp.signals(59).symbol =  'bakup_B.Uk1';
    
xcp.signals(60).symbol =  'bakup_B.FixPtRelationalOperator_e';
    
xcp.signals(61).symbol =  'bakup_B.Uk1_a5';
    
xcp.signals(62).symbol =  'bakup_B.Compare_k';
    
xcp.signals(63).symbol =  'bakup_B.Compare';
    
xcp.signals(64).symbol =  'bakup_B.Compare_b';
         
xcp.parameters(1).symbol = 'bakup_P.Position_Value';
xcp.parameters(1).size   =  1;       
xcp.parameters(1).dtname = 'real_T'; 
xcp.parameters(2).baseaddr = '&bakup_P.Position_Value';     
         
xcp.parameters(2).symbol = 'bakup_P.Switch_Value';
xcp.parameters(2).size   =  1;       
xcp.parameters(2).dtname = 'real_T'; 
xcp.parameters(3).baseaddr = '&bakup_P.Switch_Value';     
         
xcp.parameters(3).symbol = 'bakup_P.o_c_Value';
xcp.parameters(3).size   =  1;       
xcp.parameters(3).dtname = 'real_T'; 
xcp.parameters(4).baseaddr = '&bakup_P.o_c_Value';     
         
xcp.parameters(4).symbol = 'bakup_P.Gain_Gain';
xcp.parameters(4).size   =  1;       
xcp.parameters(4).dtname = 'real_T'; 
xcp.parameters(5).baseaddr = '&bakup_P.Gain_Gain';     
         
xcp.parameters(5).symbol = 'bakup_P.Kd_Gain';
xcp.parameters(5).size   =  1;       
xcp.parameters(5).dtname = 'real_T'; 
xcp.parameters(6).baseaddr = '&bakup_P.Kd_Gain';     
         
xcp.parameters(6).symbol = 'bakup_P.Ki_Gain';
xcp.parameters(6).size   =  1;       
xcp.parameters(6).dtname = 'real_T'; 
xcp.parameters(7).baseaddr = '&bakup_P.Ki_Gain';     
         
xcp.parameters(7).symbol = 'bakup_P.Kp_Gain';
xcp.parameters(7).size   =  1;       
xcp.parameters(7).dtname = 'real_T'; 
xcp.parameters(8).baseaddr = '&bakup_P.Kp_Gain';     
         
xcp.parameters(8).symbol = 'bakup_P.gain_Gain';
xcp.parameters(8).size   =  1;       
xcp.parameters(8).dtname = 'real_T'; 
xcp.parameters(9).baseaddr = '&bakup_P.gain_Gain';     
         
xcp.parameters(9).symbol = 'bakup_P.Integrator1_IC';
xcp.parameters(9).size   =  1;       
xcp.parameters(9).dtname = 'real_T'; 
xcp.parameters(10).baseaddr = '&bakup_P.Integrator1_IC';     
         
xcp.parameters(10).symbol = 'bakup_P.RateLimiter_RisingLim';
xcp.parameters(10).size   =  1;       
xcp.parameters(10).dtname = 'real_T'; 
xcp.parameters(11).baseaddr = '&bakup_P.RateLimiter_RisingLim';     
         
xcp.parameters(11).symbol = 'bakup_P.RateLimiter_FallingLim';
xcp.parameters(11).size   =  1;       
xcp.parameters(11).dtname = 'real_T'; 
xcp.parameters(12).baseaddr = '&bakup_P.RateLimiter_FallingLim';     
         
xcp.parameters(12).symbol = 'bakup_P.RateLimiter_IC';
xcp.parameters(12).size   =  1;       
xcp.parameters(12).dtname = 'real_T'; 
xcp.parameters(13).baseaddr = '&bakup_P.RateLimiter_IC';     
         
xcp.parameters(13).symbol = 'bakup_P.Q4Cnt_P1';
xcp.parameters(13).size   =  1;       
xcp.parameters(13).dtname = 'real_T'; 
xcp.parameters(14).baseaddr = '&bakup_P.Q4Cnt_P1';     
         
xcp.parameters(14).symbol = 'bakup_P.Q4Cnt_P2';
xcp.parameters(14).size   =  1;       
xcp.parameters(14).dtname = 'real_T'; 
xcp.parameters(15).baseaddr = '&bakup_P.Q4Cnt_P2';     
         
xcp.parameters(15).symbol = 'bakup_P.Q4Cnt_P3';
xcp.parameters(15).size   =  1;       
xcp.parameters(15).dtname = 'real_T'; 
xcp.parameters(16).baseaddr = '&bakup_P.Q4Cnt_P3';     
         
xcp.parameters(16).symbol = 'bakup_P.Q4Cnt_P4';
xcp.parameters(16).size   =  1;       
xcp.parameters(16).dtname = 'real_T'; 
xcp.parameters(17).baseaddr = '&bakup_P.Q4Cnt_P4';     
         
xcp.parameters(17).symbol = 'bakup_P.Q4Cnt_P5';
xcp.parameters(17).size   =  1;       
xcp.parameters(17).dtname = 'real_T'; 
xcp.parameters(18).baseaddr = '&bakup_P.Q4Cnt_P5';     
         
xcp.parameters(18).symbol = 'bakup_P.Q4Cnt_P6';
xcp.parameters(18).size   =  1;       
xcp.parameters(18).dtname = 'real_T'; 
xcp.parameters(19).baseaddr = '&bakup_P.Q4Cnt_P6';     
         
xcp.parameters(19).symbol = 'bakup_P.Q4Cnt_P7';
xcp.parameters(19).size   =  1;       
xcp.parameters(19).dtname = 'real_T'; 
xcp.parameters(20).baseaddr = '&bakup_P.Q4Cnt_P7';     
         
xcp.parameters(20).symbol = 'bakup_P.Q4Cnt_P8';
xcp.parameters(20).size   =  1;       
xcp.parameters(20).dtname = 'real_T'; 
xcp.parameters(21).baseaddr = '&bakup_P.Q4Cnt_P8';     
         
xcp.parameters(21).symbol = 'bakup_P.Q4Cnt_P9';
xcp.parameters(21).size   =  1;       
xcp.parameters(21).dtname = 'real_T'; 
xcp.parameters(22).baseaddr = '&bakup_P.Q4Cnt_P9';     
         
xcp.parameters(22).symbol = 'bakup_P.Q4Cnt_P10';
xcp.parameters(22).size   =  1;       
xcp.parameters(22).dtname = 'real_T'; 
xcp.parameters(23).baseaddr = '&bakup_P.Q4Cnt_P10';     
         
xcp.parameters(23).symbol = 'bakup_P.Q4DI_P1';
xcp.parameters(23).size   =  1;       
xcp.parameters(23).dtname = 'real_T'; 
xcp.parameters(24).baseaddr = '&bakup_P.Q4DI_P1';     
         
xcp.parameters(24).symbol = 'bakup_P.Q4DI_P2';
xcp.parameters(24).size   =  1;       
xcp.parameters(24).dtname = 'real_T'; 
xcp.parameters(25).baseaddr = '&bakup_P.Q4DI_P2';     
         
xcp.parameters(25).symbol = 'bakup_P.Q4DI_P3';
xcp.parameters(25).size   =  1;       
xcp.parameters(25).dtname = 'real_T'; 
xcp.parameters(26).baseaddr = '&bakup_P.Q4DI_P3';     
         
xcp.parameters(26).symbol = 'bakup_P.Q4DI_P4';
xcp.parameters(26).size   =  1;       
xcp.parameters(26).dtname = 'real_T'; 
xcp.parameters(27).baseaddr = '&bakup_P.Q4DI_P4';     
         
xcp.parameters(27).symbol = 'bakup_P.Q4DI_P5';
xcp.parameters(27).size   =  1;       
xcp.parameters(27).dtname = 'real_T'; 
xcp.parameters(28).baseaddr = '&bakup_P.Q4DI_P5';     
         
xcp.parameters(28).symbol = 'bakup_P.Q4DI_P6';
xcp.parameters(28).size   =  1;       
xcp.parameters(28).dtname = 'real_T'; 
xcp.parameters(29).baseaddr = '&bakup_P.Q4DI_P6';     
         
xcp.parameters(29).symbol = 'bakup_P.Q4DO_P1';
xcp.parameters(29).size   =  1;       
xcp.parameters(29).dtname = 'real_T'; 
xcp.parameters(30).baseaddr = '&bakup_P.Q4DO_P1';     
         
xcp.parameters(30).symbol = 'bakup_P.Q4DO_P2';
xcp.parameters(30).size   =  4;       
xcp.parameters(30).dtname = 'real_T'; 
xcp.parameters(31).baseaddr = '&bakup_P.Q4DO_P2[0]';     
         
xcp.parameters(31).symbol = 'bakup_P.Q4DO_P3';
xcp.parameters(31).size   =  1;       
xcp.parameters(31).dtname = 'real_T'; 
xcp.parameters(32).baseaddr = '&bakup_P.Q4DO_P3';     
         
xcp.parameters(32).symbol = 'bakup_P.Q4DO_P4';
xcp.parameters(32).size   =  4;       
xcp.parameters(32).dtname = 'real_T'; 
xcp.parameters(33).baseaddr = '&bakup_P.Q4DO_P4[0]';     
         
xcp.parameters(33).symbol = 'bakup_P.Q4DO_P5';
xcp.parameters(33).size   =  4;       
xcp.parameters(33).dtname = 'real_T'; 
xcp.parameters(34).baseaddr = '&bakup_P.Q4DO_P5[0]';     
         
xcp.parameters(34).symbol = 'bakup_P.Q4DO_P6';
xcp.parameters(34).size   =  1;       
xcp.parameters(34).dtname = 'real_T'; 
xcp.parameters(35).baseaddr = '&bakup_P.Q4DO_P6';     
         
xcp.parameters(35).symbol = 'bakup_P.Q4DO_P7';
xcp.parameters(35).size   =  1;       
xcp.parameters(35).dtname = 'real_T'; 
xcp.parameters(36).baseaddr = '&bakup_P.Q4DO_P7';     
         
xcp.parameters(36).symbol = 'bakup_P.Q4DO_P8';
xcp.parameters(36).size   =  1;       
xcp.parameters(36).dtname = 'real_T'; 
xcp.parameters(37).baseaddr = '&bakup_P.Q4DO_P8';     
         
xcp.parameters(37).symbol = 'bakup_P.load_cell_P1';
xcp.parameters(37).size   =  1;       
xcp.parameters(37).dtname = 'real_T'; 
xcp.parameters(38).baseaddr = '&bakup_P.load_cell_P1';     
         
xcp.parameters(38).symbol = 'bakup_P.load_cell_P2';
xcp.parameters(38).size   =  1;       
xcp.parameters(38).dtname = 'real_T'; 
xcp.parameters(39).baseaddr = '&bakup_P.load_cell_P2';     
         
xcp.parameters(39).symbol = 'bakup_P.load_cell_P3';
xcp.parameters(39).size   =  1;       
xcp.parameters(39).dtname = 'real_T'; 
xcp.parameters(40).baseaddr = '&bakup_P.load_cell_P3';     
         
xcp.parameters(40).symbol = 'bakup_P.load_cell_P5';
xcp.parameters(40).size   =  1;       
xcp.parameters(40).dtname = 'real_T'; 
xcp.parameters(41).baseaddr = '&bakup_P.load_cell_P5';     
         
xcp.parameters(41).symbol = 'bakup_P.load_cell_P6';
xcp.parameters(41).size   =  1;       
xcp.parameters(41).dtname = 'real_T'; 
xcp.parameters(42).baseaddr = '&bakup_P.load_cell_P6';     
         
xcp.parameters(42).symbol = 'bakup_P.load_cell_P7';
xcp.parameters(42).size   =  1;       
xcp.parameters(42).dtname = 'real_T'; 
xcp.parameters(43).baseaddr = '&bakup_P.load_cell_P7';     
         
xcp.parameters(43).symbol = 'bakup_P.angular_positionrelative_countC';
xcp.parameters(43).size   =  1;       
xcp.parameters(43).dtname = 'real_T'; 
xcp.parameters(44).baseaddr = '&bakup_P.angular_positionrelative_countC';     
         
xcp.parameters(44).symbol = 'bakup_P.Saturation_UpperSat';
xcp.parameters(44).size   =  1;       
xcp.parameters(44).dtname = 'real_T'; 
xcp.parameters(45).baseaddr = '&bakup_P.Saturation_UpperSat';     
         
xcp.parameters(45).symbol = 'bakup_P.Saturation_LowerSat';
xcp.parameters(45).size   =  1;       
xcp.parameters(45).dtname = 'real_T'; 
xcp.parameters(46).baseaddr = '&bakup_P.Saturation_LowerSat';     
         
xcp.parameters(46).symbol = 'bakup_P.Channel0Controlsignaltomotort_m';
xcp.parameters(46).size   =  1;       
xcp.parameters(46).dtname = 'real_T'; 
xcp.parameters(47).baseaddr = '&bakup_P.Channel0Controlsignaltomotort_m';     
         
xcp.parameters(47).symbol = 'bakup_P.Channel0Controlsignaltomotort_k';
xcp.parameters(47).size   =  1;       
xcp.parameters(47).dtname = 'real_T'; 
xcp.parameters(48).baseaddr = '&bakup_P.Channel0Controlsignaltomotort_k';     
         
xcp.parameters(48).symbol = 'bakup_P.Channel0Controlsignaltomotort_c';
xcp.parameters(48).size   =  1;       
xcp.parameters(48).dtname = 'real_T'; 
xcp.parameters(49).baseaddr = '&bakup_P.Channel0Controlsignaltomotort_c';     
         
xcp.parameters(49).symbol = 'bakup_P.Channel0Controlsignaltomotort_d';
xcp.parameters(49).size   =  1;       
xcp.parameters(49).dtname = 'real_T'; 
xcp.parameters(50).baseaddr = '&bakup_P.Channel0Controlsignaltomotort_d';     
         
xcp.parameters(50).symbol = 'bakup_P.Channel0Controlsignaltomotort_n';
xcp.parameters(50).size   =  1;       
xcp.parameters(50).dtname = 'real_T'; 
xcp.parameters(51).baseaddr = '&bakup_P.Channel0Controlsignaltomotort_n';     
         
xcp.parameters(51).symbol = 'bakup_P.Channel0Controlsignaltomotort_g';
xcp.parameters(51).size   =  1;       
xcp.parameters(51).dtname = 'real_T'; 
xcp.parameters(52).baseaddr = '&bakup_P.Channel0Controlsignaltomotort_g';     
         
xcp.parameters(52).symbol = 'bakup_P.Channel0Controlsignaltomotort_f';
xcp.parameters(52).size   =  1;       
xcp.parameters(52).dtname = 'real_T'; 
xcp.parameters(53).baseaddr = '&bakup_P.Channel0Controlsignaltomotort_f';     
         
xcp.parameters(53).symbol = 'bakup_P.Channel0Controlsignaltomotor_gv';
xcp.parameters(53).size   =  1;       
xcp.parameters(53).dtname = 'real_T'; 
xcp.parameters(54).baseaddr = '&bakup_P.Channel0Controlsignaltomotor_gv';     
         
xcp.parameters(54).symbol = 'bakup_P.Channel0Controlsignaltomotor_gp';
xcp.parameters(54).size   =  1;       
xcp.parameters(54).dtname = 'real_T'; 
xcp.parameters(55).baseaddr = '&bakup_P.Channel0Controlsignaltomotor_gp';     
         
xcp.parameters(55).symbol = 'bakup_P.Channel0ofEncoderInputs_P1';
xcp.parameters(55).size   =  1;       
xcp.parameters(55).dtname = 'real_T'; 
xcp.parameters(56).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P1';     
         
xcp.parameters(56).symbol = 'bakup_P.Channel0ofEncoderInputs_P2';
xcp.parameters(56).size   =  1;       
xcp.parameters(56).dtname = 'real_T'; 
xcp.parameters(57).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P2';     
         
xcp.parameters(57).symbol = 'bakup_P.Channel0ofEncoderInputs_P3';
xcp.parameters(57).size   =  1;       
xcp.parameters(57).dtname = 'real_T'; 
xcp.parameters(58).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P3';     
         
xcp.parameters(58).symbol = 'bakup_P.Channel0ofEncoderInputs_P4';
xcp.parameters(58).size   =  1;       
xcp.parameters(58).dtname = 'real_T'; 
xcp.parameters(59).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P4';     
         
xcp.parameters(59).symbol = 'bakup_P.Channel0ofEncoderInputs_P5';
xcp.parameters(59).size   =  1;       
xcp.parameters(59).dtname = 'real_T'; 
xcp.parameters(60).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P5';     
         
xcp.parameters(60).symbol = 'bakup_P.Channel0ofEncoderInputs_P6';
xcp.parameters(60).size   =  1;       
xcp.parameters(60).dtname = 'real_T'; 
xcp.parameters(61).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P6';     
         
xcp.parameters(61).symbol = 'bakup_P.Channel0ofEncoderInputs_P7';
xcp.parameters(61).size   =  1;       
xcp.parameters(61).dtname = 'real_T'; 
xcp.parameters(62).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P7';     
         
xcp.parameters(62).symbol = 'bakup_P.Channel0ofEncoderInputs_P8';
xcp.parameters(62).size   =  1;       
xcp.parameters(62).dtname = 'real_T'; 
xcp.parameters(63).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P8';     
         
xcp.parameters(63).symbol = 'bakup_P.Channel0ofEncoderInputs_P9';
xcp.parameters(63).size   =  1;       
xcp.parameters(63).dtname = 'real_T'; 
xcp.parameters(64).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P9';     
         
xcp.parameters(64).symbol = 'bakup_P.Channel0ofEncoderInputs_P10';
xcp.parameters(64).size   =  1;       
xcp.parameters(64).dtname = 'real_T'; 
xcp.parameters(65).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P10';     
         
xcp.parameters(65).symbol = 'bakup_P.Channel0ofEncoderInputs_P11';
xcp.parameters(65).size   =  1;       
xcp.parameters(65).dtname = 'real_T'; 
xcp.parameters(66).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P11';     
         
xcp.parameters(66).symbol = 'bakup_P.Channel0ofEncoderInputs_P12';
xcp.parameters(66).size   =  1;       
xcp.parameters(66).dtname = 'real_T'; 
xcp.parameters(67).baseaddr = '&bakup_P.Channel0ofEncoderInputs_P12';     
         
xcp.parameters(67).symbol = 'bakup_P.BackemfKe1_Gain';
xcp.parameters(67).size   =  1;       
xcp.parameters(67).dtname = 'real_T'; 
xcp.parameters(68).baseaddr = '&bakup_P.BackemfKe1_Gain';     
         
xcp.parameters(68).symbol = 'bakup_P.Dampingb1_Gain';
xcp.parameters(68).size   =  1;       
xcp.parameters(68).dtname = 'real_T'; 
xcp.parameters(69).baseaddr = '&bakup_P.Dampingb1_Gain';     
         
xcp.parameters(69).symbol = 'bakup_P.GainKt2_Gain';
xcp.parameters(69).size   =  1;       
xcp.parameters(69).dtname = 'real_T'; 
xcp.parameters(70).baseaddr = '&bakup_P.GainKt2_Gain';     
         
xcp.parameters(70).symbol = 'bakup_P.GainKt3_Gain';
xcp.parameters(70).size   =  1;       
xcp.parameters(70).dtname = 'real_T'; 
xcp.parameters(71).baseaddr = '&bakup_P.GainKt3_Gain';     
         
xcp.parameters(71).symbol = 'bakup_P.Inductance_Gain';
xcp.parameters(71).size   =  1;       
xcp.parameters(71).dtname = 'real_T'; 
xcp.parameters(72).baseaddr = '&bakup_P.Inductance_Gain';     
         
xcp.parameters(72).symbol = 'bakup_P.ResistanceR1_Gain';
xcp.parameters(72).size   =  1;       
xcp.parameters(72).dtname = 'real_T'; 
xcp.parameters(73).baseaddr = '&bakup_P.ResistanceR1_Gain';     
         
xcp.parameters(73).symbol = 'bakup_P.Integrator1_IC_j';
xcp.parameters(73).size   =  1;       
xcp.parameters(73).dtname = 'real_T'; 
xcp.parameters(74).baseaddr = '&bakup_P.Integrator1_IC_j';     
         
xcp.parameters(74).symbol = 'bakup_P.Integrator5_IC';
xcp.parameters(74).size   =  1;       
xcp.parameters(74).dtname = 'real_T'; 
xcp.parameters(75).baseaddr = '&bakup_P.Integrator5_IC';     
         
xcp.parameters(75).symbol = 'bakup_P.Integrator6_IC';
xcp.parameters(75).size   =  1;       
xcp.parameters(75).dtname = 'real_T'; 
xcp.parameters(76).baseaddr = '&bakup_P.Integrator6_IC';     
         
xcp.parameters(76).symbol = 'bakup_P.DetectRisePositive_vinit_j';
xcp.parameters(76).size   =  1;       
xcp.parameters(76).dtname = 'uint8_T'; 
xcp.parameters(77).baseaddr = '&bakup_P.DetectRisePositive_vinit_j';     
         
xcp.parameters(77).symbol = 'bakup_P.Constant_Value';
xcp.parameters(77).size   =  1;       
xcp.parameters(77).dtname = 'real_T'; 
xcp.parameters(78).baseaddr = '&bakup_P.Constant_Value';     
         
xcp.parameters(78).symbol = 'bakup_P.enable_Value_b';
xcp.parameters(78).size   =  1;       
xcp.parameters(78).dtname = 'uint32_T'; 
xcp.parameters(79).baseaddr = '&bakup_P.enable_Value_b';     
         
xcp.parameters(79).symbol = 'bakup_P.my_dir_Value_e';
xcp.parameters(79).size   =  1;       
xcp.parameters(79).dtname = 'real_T'; 
xcp.parameters(80).baseaddr = '&bakup_P.my_dir_Value_e';     
         
xcp.parameters(80).symbol = 'bakup_P.step_pulse_Amp_i';
xcp.parameters(80).size   =  1;       
xcp.parameters(80).dtname = 'real_T'; 
xcp.parameters(81).baseaddr = '&bakup_P.step_pulse_Amp_i';     
         
xcp.parameters(81).symbol = 'bakup_P.step_pulse_Period_a';
xcp.parameters(81).size   =  1;       
xcp.parameters(81).dtname = 'real_T'; 
xcp.parameters(82).baseaddr = '&bakup_P.step_pulse_Period_a';     
         
xcp.parameters(82).symbol = 'bakup_P.step_pulse_Duty_j';
xcp.parameters(82).size   =  1;       
xcp.parameters(82).dtname = 'real_T'; 
xcp.parameters(83).baseaddr = '&bakup_P.step_pulse_Duty_j';     
         
xcp.parameters(83).symbol = 'bakup_P.step_pulse_PhaseDelay_n';
xcp.parameters(83).size   =  1;       
xcp.parameters(83).dtname = 'real_T'; 
xcp.parameters(84).baseaddr = '&bakup_P.step_pulse_PhaseDelay_n';     
         
xcp.parameters(84).symbol = 'bakup_P.switch_Threshold_f';
xcp.parameters(84).size   =  1;       
xcp.parameters(84).dtname = 'uint32_T'; 
xcp.parameters(85).baseaddr = '&bakup_P.switch_Threshold_f';     
         
xcp.parameters(85).symbol = 'bakup_P.UnitDelay_InitialCondition_k';
xcp.parameters(85).size   =  1;       
xcp.parameters(85).dtname = 'uint32_T'; 
xcp.parameters(86).baseaddr = '&bakup_P.UnitDelay_InitialCondition_k';     
         
xcp.parameters(86).symbol = 'bakup_P.DetectRisePositive_vinit';
xcp.parameters(86).size   =  1;       
xcp.parameters(86).dtname = 'uint8_T'; 
xcp.parameters(87).baseaddr = '&bakup_P.DetectRisePositive_vinit';     
         
xcp.parameters(87).symbol = 'bakup_P.Constant_Value_h';
xcp.parameters(87).size   =  1;       
xcp.parameters(87).dtname = 'real_T'; 
xcp.parameters(88).baseaddr = '&bakup_P.Constant_Value_h';     
         
xcp.parameters(88).symbol = 'bakup_P.enable_Value_i';
xcp.parameters(88).size   =  1;       
xcp.parameters(88).dtname = 'uint32_T'; 
xcp.parameters(89).baseaddr = '&bakup_P.enable_Value_i';     
         
xcp.parameters(89).symbol = 'bakup_P.my_dir_Value';
xcp.parameters(89).size   =  1;       
xcp.parameters(89).dtname = 'real_T'; 
xcp.parameters(90).baseaddr = '&bakup_P.my_dir_Value';     
         
xcp.parameters(90).symbol = 'bakup_P.step_pulse_Amp';
xcp.parameters(90).size   =  1;       
xcp.parameters(90).dtname = 'real_T'; 
xcp.parameters(91).baseaddr = '&bakup_P.step_pulse_Amp';     
         
xcp.parameters(91).symbol = 'bakup_P.step_pulse_Period';
xcp.parameters(91).size   =  1;       
xcp.parameters(91).dtname = 'real_T'; 
xcp.parameters(92).baseaddr = '&bakup_P.step_pulse_Period';     
         
xcp.parameters(92).symbol = 'bakup_P.step_pulse_Duty';
xcp.parameters(92).size   =  1;       
xcp.parameters(92).dtname = 'real_T'; 
xcp.parameters(93).baseaddr = '&bakup_P.step_pulse_Duty';     
         
xcp.parameters(93).symbol = 'bakup_P.step_pulse_PhaseDelay';
xcp.parameters(93).size   =  1;       
xcp.parameters(93).dtname = 'real_T'; 
xcp.parameters(94).baseaddr = '&bakup_P.step_pulse_PhaseDelay';     
         
xcp.parameters(94).symbol = 'bakup_P.switch_Threshold';
xcp.parameters(94).size   =  1;       
xcp.parameters(94).dtname = 'uint32_T'; 
xcp.parameters(95).baseaddr = '&bakup_P.switch_Threshold';     
         
xcp.parameters(95).symbol = 'bakup_P.UnitDelay_InitialCondition_f';
xcp.parameters(95).size   =  1;       
xcp.parameters(95).dtname = 'uint32_T'; 
xcp.parameters(96).baseaddr = '&bakup_P.UnitDelay_InitialCondition_f';     
         
xcp.parameters(96).symbol = 'bakup_P.DetectRisePositive_vinit_i';
xcp.parameters(96).size   =  1;       
xcp.parameters(96).dtname = 'uint8_T'; 
xcp.parameters(97).baseaddr = '&bakup_P.DetectRisePositive_vinit_i';     
         
xcp.parameters(97).symbol = 'bakup_P.delay_ticks_Value';
xcp.parameters(97).size   =  1;       
xcp.parameters(97).dtname = 'real_T'; 
xcp.parameters(98).baseaddr = '&bakup_P.delay_ticks_Value';     
         
xcp.parameters(98).symbol = 'bakup_P.enable_Value';
xcp.parameters(98).size   =  1;       
xcp.parameters(98).dtname = 'real_T'; 
xcp.parameters(99).baseaddr = '&bakup_P.enable_Value';     
         
xcp.parameters(99).symbol = 'bakup_P.clock_Amp';
xcp.parameters(99).size   =  1;       
xcp.parameters(99).dtname = 'real_T'; 
xcp.parameters(100).baseaddr = '&bakup_P.clock_Amp';     
         
xcp.parameters(100).symbol = 'bakup_P.clock_Period';
xcp.parameters(100).size   =  1;       
xcp.parameters(100).dtname = 'real_T'; 
xcp.parameters(101).baseaddr = '&bakup_P.clock_Period';     
         
xcp.parameters(101).symbol = 'bakup_P.clock_Duty';
xcp.parameters(101).size   =  1;       
xcp.parameters(101).dtname = 'real_T'; 
xcp.parameters(102).baseaddr = '&bakup_P.clock_Duty';     
         
xcp.parameters(102).symbol = 'bakup_P.clock_PhaseDelay';
xcp.parameters(102).size   =  1;       
xcp.parameters(102).dtname = 'real_T'; 
xcp.parameters(103).baseaddr = '&bakup_P.clock_PhaseDelay';     
         
xcp.parameters(103).symbol = 'bakup_P.UnitDelay_InitialCondition';
xcp.parameters(103).size   =  1;       
xcp.parameters(103).dtname = 'real_T'; 
xcp.parameters(104).baseaddr = '&bakup_P.UnitDelay_InitialCondition';     
         
xcp.parameters(104).symbol = 'bakup_P.Constant_Value_d';
xcp.parameters(104).size   =  1;       
xcp.parameters(104).dtname = 'real_T'; 
xcp.parameters(105).baseaddr = '&bakup_P.Constant_Value_d';     
         
xcp.parameters(105).symbol = 'bakup_P.Constant_Value_e';
xcp.parameters(105).size   =  1;       
xcp.parameters(105).dtname = 'real_T'; 
xcp.parameters(106).baseaddr = '&bakup_P.Constant_Value_e';     
         
xcp.parameters(106).symbol = 'bakup_P.Constant_Value_o';
xcp.parameters(106).size   =  1;       
xcp.parameters(106).dtname = 'real_T'; 
xcp.parameters(107).baseaddr = '&bakup_P.Constant_Value_o';     

function n = getNumParameters
n = 106;

function n = getNumSignals
n = 64;

function n = getNumEvents
n = 2;

function n = getNumModels
n = 1;

