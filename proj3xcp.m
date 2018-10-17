function xcp = proj3xcp

xcp.events     =  repmat(struct('id',{}, 'sampletime', {}, 'offset', {}), getNumEvents, 1 );
xcp.parameters =  repmat(struct('symbol',{}, 'size', {}, 'dtname', {}, 'baseaddr', {}), getNumParameters, 1 );
xcp.signals    =  repmat(struct('symbol',{}), getNumSignals, 1 );
xcp.models     =  cell(1,getNumModels);
    
xcp.models{1} = 'proj3';
   
   
         
xcp.events(1).id         = 0;
xcp.events(1).sampletime = 0.001;
xcp.events(1).offset     = 0.0;
    
xcp.signals(1).symbol =  'proj3_B.uUsesimulatedmotor0Userealmotor';
    
xcp.signals(2).symbol =  'proj3_B.Derivative1';
    
xcp.signals(3).symbol =  'proj3_B.Gain';
    
xcp.signals(4).symbol =  'proj3_B.Kd';
    
xcp.signals(5).symbol =  'proj3_B.Ki';
    
xcp.signals(6).symbol =  'proj3_B.Kp';
    
xcp.signals(7).symbol =  'proj3_B.Setpoint';
    
xcp.signals(8).symbol =  'proj3_B.Integrator1';
    
xcp.signals(9).symbol =  'proj3_B.ErrorSignal';
    
xcp.signals(10).symbol =  'proj3_B.Sum4';
    
xcp.signals(11).symbol =  'proj3_B.angular_positionrelative_countC';
    
xcp.signals(12).symbol =  'proj3_B.Saturation';
    
xcp.signals(13).symbol =  'proj3_B.Channel0ofEncoderInputs';
    
xcp.signals(14).symbol =  'proj3_B.BackemfKe1';
    
xcp.signals(15).symbol =  'proj3_B.Dampingb1';
    
xcp.signals(16).symbol =  'proj3_B.GainKt2';
    
xcp.signals(17).symbol =  'proj3_B.GainKt3';
    
xcp.signals(18).symbol =  'proj3_B.Inductance';
    
xcp.signals(19).symbol =  'proj3_B.ResistanceR1';
    
xcp.signals(20).symbol =  'proj3_B.Integrator1_h';
    
xcp.signals(21).symbol =  'proj3_B.Integrator5';
    
xcp.signals(22).symbol =  'proj3_B.Integrator6';
    
xcp.signals(23).symbol =  'proj3_B.Sum1';
    
xcp.signals(24).symbol =  'proj3_B.Sum2_e';
    
xcp.signals(25).symbol =  'proj3_B.complementtheinput';
    
xcp.signals(26).symbol =  'proj3_B.Product';
    
xcp.signals(27).symbol =  'proj3_B.Product1';
    
xcp.signals(28).symbol =  'proj3_B.complementtheinput1';
    
xcp.signals(29).symbol =  'proj3_B.Product2';
    
xcp.signals(30).symbol =  'proj3_B.Product3';
    
xcp.signals(31).symbol =  'proj3_B.Sum2';
         
xcp.parameters(1).symbol = 'proj3_P.uUsesimulatedmotor0Userealmotor';
xcp.parameters(1).size   =  1;       
xcp.parameters(1).dtname = 'real_T'; 
xcp.parameters(2).baseaddr = '&proj3_P.uUsesimulatedmotor0Userealmotor';     
         
xcp.parameters(2).symbol = 'proj3_P.myVar_Value';
xcp.parameters(2).size   =  1;       
xcp.parameters(2).dtname = 'real_T'; 
xcp.parameters(3).baseaddr = '&proj3_P.myVar_Value';     
         
xcp.parameters(3).symbol = 'proj3_P.Gain_Gain';
xcp.parameters(3).size   =  1;       
xcp.parameters(3).dtname = 'real_T'; 
xcp.parameters(4).baseaddr = '&proj3_P.Gain_Gain';     
         
xcp.parameters(4).symbol = 'proj3_P.Kd_Gain';
xcp.parameters(4).size   =  1;       
xcp.parameters(4).dtname = 'real_T'; 
xcp.parameters(5).baseaddr = '&proj3_P.Kd_Gain';     
         
xcp.parameters(5).symbol = 'proj3_P.Ki_Gain';
xcp.parameters(5).size   =  1;       
xcp.parameters(5).dtname = 'real_T'; 
xcp.parameters(6).baseaddr = '&proj3_P.Ki_Gain';     
         
xcp.parameters(6).symbol = 'proj3_P.Kp_Gain';
xcp.parameters(6).size   =  1;       
xcp.parameters(6).dtname = 'real_T'; 
xcp.parameters(7).baseaddr = '&proj3_P.Kp_Gain';     
         
xcp.parameters(7).symbol = 'proj3_P.gain_Gain';
xcp.parameters(7).size   =  1;       
xcp.parameters(7).dtname = 'real_T'; 
xcp.parameters(8).baseaddr = '&proj3_P.gain_Gain';     
         
xcp.parameters(8).symbol = 'proj3_P.Integrator1_IC';
xcp.parameters(8).size   =  1;       
xcp.parameters(8).dtname = 'real_T'; 
xcp.parameters(9).baseaddr = '&proj3_P.Integrator1_IC';     
         
xcp.parameters(9).symbol = 'proj3_P.angular_positionrelative_countC';
xcp.parameters(9).size   =  1;       
xcp.parameters(9).dtname = 'real_T'; 
xcp.parameters(10).baseaddr = '&proj3_P.angular_positionrelative_countC';     
         
xcp.parameters(10).symbol = 'proj3_P.Saturation_UpperSat';
xcp.parameters(10).size   =  1;       
xcp.parameters(10).dtname = 'real_T'; 
xcp.parameters(11).baseaddr = '&proj3_P.Saturation_UpperSat';     
         
xcp.parameters(11).symbol = 'proj3_P.Saturation_LowerSat';
xcp.parameters(11).size   =  1;       
xcp.parameters(11).dtname = 'real_T'; 
xcp.parameters(12).baseaddr = '&proj3_P.Saturation_LowerSat';     
         
xcp.parameters(12).symbol = 'proj3_P.Channel0Controlsignaltomotort_m';
xcp.parameters(12).size   =  1;       
xcp.parameters(12).dtname = 'real_T'; 
xcp.parameters(13).baseaddr = '&proj3_P.Channel0Controlsignaltomotort_m';     
         
xcp.parameters(13).symbol = 'proj3_P.Channel0Controlsignaltomotort_k';
xcp.parameters(13).size   =  1;       
xcp.parameters(13).dtname = 'real_T'; 
xcp.parameters(14).baseaddr = '&proj3_P.Channel0Controlsignaltomotort_k';     
         
xcp.parameters(14).symbol = 'proj3_P.Channel0Controlsignaltomotort_c';
xcp.parameters(14).size   =  1;       
xcp.parameters(14).dtname = 'real_T'; 
xcp.parameters(15).baseaddr = '&proj3_P.Channel0Controlsignaltomotort_c';     
         
xcp.parameters(15).symbol = 'proj3_P.Channel0Controlsignaltomotort_d';
xcp.parameters(15).size   =  1;       
xcp.parameters(15).dtname = 'real_T'; 
xcp.parameters(16).baseaddr = '&proj3_P.Channel0Controlsignaltomotort_d';     
         
xcp.parameters(16).symbol = 'proj3_P.Channel0Controlsignaltomotort_n';
xcp.parameters(16).size   =  1;       
xcp.parameters(16).dtname = 'real_T'; 
xcp.parameters(17).baseaddr = '&proj3_P.Channel0Controlsignaltomotort_n';     
         
xcp.parameters(17).symbol = 'proj3_P.Channel0Controlsignaltomotort_g';
xcp.parameters(17).size   =  1;       
xcp.parameters(17).dtname = 'real_T'; 
xcp.parameters(18).baseaddr = '&proj3_P.Channel0Controlsignaltomotort_g';     
         
xcp.parameters(18).symbol = 'proj3_P.Channel0Controlsignaltomotort_f';
xcp.parameters(18).size   =  1;       
xcp.parameters(18).dtname = 'real_T'; 
xcp.parameters(19).baseaddr = '&proj3_P.Channel0Controlsignaltomotort_f';     
         
xcp.parameters(19).symbol = 'proj3_P.Channel0Controlsignaltomotor_gv';
xcp.parameters(19).size   =  1;       
xcp.parameters(19).dtname = 'real_T'; 
xcp.parameters(20).baseaddr = '&proj3_P.Channel0Controlsignaltomotor_gv';     
         
xcp.parameters(20).symbol = 'proj3_P.Channel0Controlsignaltomotor_gp';
xcp.parameters(20).size   =  1;       
xcp.parameters(20).dtname = 'real_T'; 
xcp.parameters(21).baseaddr = '&proj3_P.Channel0Controlsignaltomotor_gp';     
         
xcp.parameters(21).symbol = 'proj3_P.Channel0ofEncoderInputs_P1';
xcp.parameters(21).size   =  1;       
xcp.parameters(21).dtname = 'real_T'; 
xcp.parameters(22).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P1';     
         
xcp.parameters(22).symbol = 'proj3_P.Channel0ofEncoderInputs_P2';
xcp.parameters(22).size   =  1;       
xcp.parameters(22).dtname = 'real_T'; 
xcp.parameters(23).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P2';     
         
xcp.parameters(23).symbol = 'proj3_P.Channel0ofEncoderInputs_P3';
xcp.parameters(23).size   =  1;       
xcp.parameters(23).dtname = 'real_T'; 
xcp.parameters(24).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P3';     
         
xcp.parameters(24).symbol = 'proj3_P.Channel0ofEncoderInputs_P4';
xcp.parameters(24).size   =  1;       
xcp.parameters(24).dtname = 'real_T'; 
xcp.parameters(25).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P4';     
         
xcp.parameters(25).symbol = 'proj3_P.Channel0ofEncoderInputs_P5';
xcp.parameters(25).size   =  1;       
xcp.parameters(25).dtname = 'real_T'; 
xcp.parameters(26).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P5';     
         
xcp.parameters(26).symbol = 'proj3_P.Channel0ofEncoderInputs_P6';
xcp.parameters(26).size   =  1;       
xcp.parameters(26).dtname = 'real_T'; 
xcp.parameters(27).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P6';     
         
xcp.parameters(27).symbol = 'proj3_P.Channel0ofEncoderInputs_P7';
xcp.parameters(27).size   =  1;       
xcp.parameters(27).dtname = 'real_T'; 
xcp.parameters(28).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P7';     
         
xcp.parameters(28).symbol = 'proj3_P.Channel0ofEncoderInputs_P8';
xcp.parameters(28).size   =  1;       
xcp.parameters(28).dtname = 'real_T'; 
xcp.parameters(29).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P8';     
         
xcp.parameters(29).symbol = 'proj3_P.Channel0ofEncoderInputs_P9';
xcp.parameters(29).size   =  1;       
xcp.parameters(29).dtname = 'real_T'; 
xcp.parameters(30).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P9';     
         
xcp.parameters(30).symbol = 'proj3_P.Channel0ofEncoderInputs_P10';
xcp.parameters(30).size   =  1;       
xcp.parameters(30).dtname = 'real_T'; 
xcp.parameters(31).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P10';     
         
xcp.parameters(31).symbol = 'proj3_P.Channel0ofEncoderInputs_P11';
xcp.parameters(31).size   =  1;       
xcp.parameters(31).dtname = 'real_T'; 
xcp.parameters(32).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P11';     
         
xcp.parameters(32).symbol = 'proj3_P.Channel0ofEncoderInputs_P12';
xcp.parameters(32).size   =  1;       
xcp.parameters(32).dtname = 'real_T'; 
xcp.parameters(33).baseaddr = '&proj3_P.Channel0ofEncoderInputs_P12';     
         
xcp.parameters(33).symbol = 'proj3_P.BackemfKe1_Gain';
xcp.parameters(33).size   =  1;       
xcp.parameters(33).dtname = 'real_T'; 
xcp.parameters(34).baseaddr = '&proj3_P.BackemfKe1_Gain';     
         
xcp.parameters(34).symbol = 'proj3_P.Dampingb1_Gain';
xcp.parameters(34).size   =  1;       
xcp.parameters(34).dtname = 'real_T'; 
xcp.parameters(35).baseaddr = '&proj3_P.Dampingb1_Gain';     
         
xcp.parameters(35).symbol = 'proj3_P.GainKt2_Gain';
xcp.parameters(35).size   =  1;       
xcp.parameters(35).dtname = 'real_T'; 
xcp.parameters(36).baseaddr = '&proj3_P.GainKt2_Gain';     
         
xcp.parameters(36).symbol = 'proj3_P.GainKt3_Gain';
xcp.parameters(36).size   =  1;       
xcp.parameters(36).dtname = 'real_T'; 
xcp.parameters(37).baseaddr = '&proj3_P.GainKt3_Gain';     
         
xcp.parameters(37).symbol = 'proj3_P.Inductance_Gain';
xcp.parameters(37).size   =  1;       
xcp.parameters(37).dtname = 'real_T'; 
xcp.parameters(38).baseaddr = '&proj3_P.Inductance_Gain';     
         
xcp.parameters(38).symbol = 'proj3_P.ResistanceR1_Gain';
xcp.parameters(38).size   =  1;       
xcp.parameters(38).dtname = 'real_T'; 
xcp.parameters(39).baseaddr = '&proj3_P.ResistanceR1_Gain';     
         
xcp.parameters(39).symbol = 'proj3_P.Integrator1_IC_j';
xcp.parameters(39).size   =  1;       
xcp.parameters(39).dtname = 'real_T'; 
xcp.parameters(40).baseaddr = '&proj3_P.Integrator1_IC_j';     
         
xcp.parameters(40).symbol = 'proj3_P.Integrator5_IC';
xcp.parameters(40).size   =  1;       
xcp.parameters(40).dtname = 'real_T'; 
xcp.parameters(41).baseaddr = '&proj3_P.Integrator5_IC';     
         
xcp.parameters(41).symbol = 'proj3_P.Integrator6_IC';
xcp.parameters(41).size   =  1;       
xcp.parameters(41).dtname = 'real_T'; 
xcp.parameters(42).baseaddr = '&proj3_P.Integrator6_IC';     

function n = getNumParameters
n = 41;

function n = getNumSignals
n = 31;

function n = getNumEvents
n = 1;

function n = getNumModels
n = 1;

