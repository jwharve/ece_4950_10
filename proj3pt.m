function pt=proj3pt
pt = [];

  
pt(1).blockname = '1 - Use simulated motor 0 - Use real motor';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  = false;
pt(1).symbol     = 'proj3_P.uUsesimulatedmotor0Userealmotor';
pt(1).baseaddr   = '&proj3_P.uUsesimulatedmotor0Userealmotor';
pt(1).dtname     = 'real_T';

pt(getlenPT) = pt(1);


  
pt(2).blockname = 'myVar';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_DOUBLE';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  = false;
pt(2).symbol     = 'proj3_P.myVar_Value';
pt(2).baseaddr   = '&proj3_P.myVar_Value';
pt(2).dtname     = 'real_T';



  
pt(3).blockname = 'Gain';
pt(3).paramname = 'Gain';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_DOUBLE';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  = false;
pt(3).symbol     = 'proj3_P.Gain_Gain';
pt(3).baseaddr   = '&proj3_P.Gain_Gain';
pt(3).dtname     = 'real_T';



  
pt(4).blockname = 'Kd';
pt(4).paramname = 'Gain';
pt(4).class     = 'scalar';
pt(4).nrows     = 1;
pt(4).ncols     = 1;
pt(4).subsource = 'SS_DOUBLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  = false;
pt(4).symbol     = 'proj3_P.Kd_Gain';
pt(4).baseaddr   = '&proj3_P.Kd_Gain';
pt(4).dtname     = 'real_T';



  
pt(5).blockname = 'Ki';
pt(5).paramname = 'Gain';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_DOUBLE';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  = false;
pt(5).symbol     = 'proj3_P.Ki_Gain';
pt(5).baseaddr   = '&proj3_P.Ki_Gain';
pt(5).dtname     = 'real_T';



  
pt(6).blockname = 'Kp';
pt(6).paramname = 'Gain';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  = false;
pt(6).symbol     = 'proj3_P.Kp_Gain';
pt(6).baseaddr   = '&proj3_P.Kp_Gain';
pt(6).dtname     = 'real_T';



  
pt(7).blockname = 'gain';
pt(7).paramname = 'Gain';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_DOUBLE';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  = false;
pt(7).symbol     = 'proj3_P.gain_Gain';
pt(7).baseaddr   = '&proj3_P.gain_Gain';
pt(7).dtname     = 'real_T';



  
pt(8).blockname = 'Integrator1';
pt(8).paramname = 'InitialCondition';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_DOUBLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  = false;
pt(8).symbol     = 'proj3_P.Integrator1_IC';
pt(8).baseaddr   = '&proj3_P.Integrator1_IC';
pt(8).dtname     = 'real_T';



  
pt(9).blockname = 'Real motor/angular_position =  [relative_count//COUNTS_PER_REV] *360 degrees';
pt(9).paramname = 'Gain';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  = false;
pt(9).symbol     = 'proj3_P.angular_positionrelative_countC';
pt(9).baseaddr   = '&proj3_P.angular_positionrelative_countC';
pt(9).dtname     = 'real_T';



  
pt(10).blockname = 'Real motor/Saturation';
pt(10).paramname = 'UpperLimit';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  = false;
pt(10).symbol     = 'proj3_P.Saturation_UpperSat';
pt(10).baseaddr   = '&proj3_P.Saturation_UpperSat';
pt(10).dtname     = 'real_T';



  
pt(11).blockname = 'Real motor/Saturation';
pt(11).paramname = 'LowerLimit';
pt(11).class     = 'scalar';
pt(11).nrows     = 1;
pt(11).ncols     = 1;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  = false;
pt(11).symbol     = 'proj3_P.Saturation_LowerSat';
pt(11).baseaddr   = '&proj3_P.Saturation_LowerSat';
pt(11).dtname     = 'real_T';



  
pt(12).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(12).paramname = 'P1';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  = false;
pt(12).symbol     = 'proj3_P.Channel0Controlsignaltomotort_m';
pt(12).baseaddr   = '&proj3_P.Channel0Controlsignaltomotort_m';
pt(12).dtname     = 'real_T';



  
pt(13).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(13).paramname = 'P2';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  = false;
pt(13).symbol     = 'proj3_P.Channel0Controlsignaltomotort_k';
pt(13).baseaddr   = '&proj3_P.Channel0Controlsignaltomotort_k';
pt(13).dtname     = 'real_T';



  
pt(14).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(14).paramname = 'P3';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';
pt(14).isStruct  = false;
pt(14).symbol     = 'proj3_P.Channel0Controlsignaltomotort_c';
pt(14).baseaddr   = '&proj3_P.Channel0Controlsignaltomotort_c';
pt(14).dtname     = 'real_T';



  
pt(15).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(15).paramname = 'P4';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';
pt(15).isStruct  = false;
pt(15).symbol     = 'proj3_P.Channel0Controlsignaltomotort_d';
pt(15).baseaddr   = '&proj3_P.Channel0Controlsignaltomotort_d';
pt(15).dtname     = 'real_T';



  
pt(16).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(16).paramname = 'P5';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';
pt(16).isStruct  = false;
pt(16).symbol     = 'proj3_P.Channel0Controlsignaltomotort_n';
pt(16).baseaddr   = '&proj3_P.Channel0Controlsignaltomotort_n';
pt(16).dtname     = 'real_T';



  
pt(17).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(17).paramname = 'P6';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';
pt(17).isStruct  = false;
pt(17).symbol     = 'proj3_P.Channel0Controlsignaltomotort_g';
pt(17).baseaddr   = '&proj3_P.Channel0Controlsignaltomotort_g';
pt(17).dtname     = 'real_T';



  
pt(18).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(18).paramname = 'P7';
pt(18).class     = 'scalar';
pt(18).nrows     = 1;
pt(18).ncols     = 1;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';
pt(18).isStruct  = false;
pt(18).symbol     = 'proj3_P.Channel0Controlsignaltomotort_f';
pt(18).baseaddr   = '&proj3_P.Channel0Controlsignaltomotort_f';
pt(18).dtname     = 'real_T';



  
pt(19).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(19).paramname = 'P8';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';
pt(19).isStruct  = false;
pt(19).symbol     = 'proj3_P.Channel0Controlsignaltomotor_gv';
pt(19).baseaddr   = '&proj3_P.Channel0Controlsignaltomotor_gv';
pt(19).dtname     = 'real_T';



  
pt(20).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(20).paramname = 'P9';
pt(20).class     = 'scalar';
pt(20).nrows     = 1;
pt(20).ncols     = 1;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';
pt(20).isStruct  = false;
pt(20).symbol     = 'proj3_P.Channel0Controlsignaltomotor_gp';
pt(20).baseaddr   = '&proj3_P.Channel0Controlsignaltomotor_gp';
pt(20).dtname     = 'real_T';



  
pt(21).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(21).paramname = 'P1';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';
pt(21).isStruct  = false;
pt(21).symbol     = 'proj3_P.Channel0ofEncoderInputs_P1';
pt(21).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P1';
pt(21).dtname     = 'real_T';



  
pt(22).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(22).paramname = 'P2';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';
pt(22).isStruct  = false;
pt(22).symbol     = 'proj3_P.Channel0ofEncoderInputs_P2';
pt(22).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P2';
pt(22).dtname     = 'real_T';



  
pt(23).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(23).paramname = 'P3';
pt(23).class     = 'scalar';
pt(23).nrows     = 1;
pt(23).ncols     = 1;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';
pt(23).isStruct  = false;
pt(23).symbol     = 'proj3_P.Channel0ofEncoderInputs_P3';
pt(23).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P3';
pt(23).dtname     = 'real_T';



  
pt(24).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(24).paramname = 'P4';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';
pt(24).isStruct  = false;
pt(24).symbol     = 'proj3_P.Channel0ofEncoderInputs_P4';
pt(24).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P4';
pt(24).dtname     = 'real_T';



  
pt(25).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(25).paramname = 'P5';
pt(25).class     = 'scalar';
pt(25).nrows     = 1;
pt(25).ncols     = 1;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';
pt(25).isStruct  = false;
pt(25).symbol     = 'proj3_P.Channel0ofEncoderInputs_P5';
pt(25).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P5';
pt(25).dtname     = 'real_T';



  
pt(26).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(26).paramname = 'P6';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';
pt(26).isStruct  = false;
pt(26).symbol     = 'proj3_P.Channel0ofEncoderInputs_P6';
pt(26).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P6';
pt(26).dtname     = 'real_T';



  
pt(27).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(27).paramname = 'P7';
pt(27).class     = 'scalar';
pt(27).nrows     = 1;
pt(27).ncols     = 1;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';
pt(27).isStruct  = false;
pt(27).symbol     = 'proj3_P.Channel0ofEncoderInputs_P7';
pt(27).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P7';
pt(27).dtname     = 'real_T';



  
pt(28).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(28).paramname = 'P8';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_DOUBLE';
pt(28).ndims     = '2';
pt(28).size      = '[]';
pt(28).isStruct  = false;
pt(28).symbol     = 'proj3_P.Channel0ofEncoderInputs_P8';
pt(28).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P8';
pt(28).dtname     = 'real_T';



  
pt(29).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(29).paramname = 'P9';
pt(29).class     = 'scalar';
pt(29).nrows     = 1;
pt(29).ncols     = 1;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';
pt(29).isStruct  = false;
pt(29).symbol     = 'proj3_P.Channel0ofEncoderInputs_P9';
pt(29).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P9';
pt(29).dtname     = 'real_T';



  
pt(30).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(30).paramname = 'P10';
pt(30).class     = 'scalar';
pt(30).nrows     = 1;
pt(30).ncols     = 1;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';
pt(30).isStruct  = false;
pt(30).symbol     = 'proj3_P.Channel0ofEncoderInputs_P10';
pt(30).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P10';
pt(30).dtname     = 'real_T';



  
pt(31).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(31).paramname = 'P11';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';
pt(31).isStruct  = false;
pt(31).symbol     = 'proj3_P.Channel0ofEncoderInputs_P11';
pt(31).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P11';
pt(31).dtname     = 'real_T';



  
pt(32).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(32).paramname = 'P12';
pt(32).class     = 'scalar';
pt(32).nrows     = 1;
pt(32).ncols     = 1;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';
pt(32).isStruct  = false;
pt(32).symbol     = 'proj3_P.Channel0ofEncoderInputs_P12';
pt(32).baseaddr   = '&proj3_P.Channel0ofEncoderInputs_P12';
pt(32).dtname     = 'real_T';



  
pt(33).blockname = 'Simulated motor/Back emf Ke1';
pt(33).paramname = 'Gain';
pt(33).class     = 'scalar';
pt(33).nrows     = 1;
pt(33).ncols     = 1;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';
pt(33).isStruct  = false;
pt(33).symbol     = 'proj3_P.BackemfKe1_Gain';
pt(33).baseaddr   = '&proj3_P.BackemfKe1_Gain';
pt(33).dtname     = 'real_T';



  
pt(34).blockname = 'Simulated motor/Damping b1';
pt(34).paramname = 'Gain';
pt(34).class     = 'scalar';
pt(34).nrows     = 1;
pt(34).ncols     = 1;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';
pt(34).isStruct  = false;
pt(34).symbol     = 'proj3_P.Dampingb1_Gain';
pt(34).baseaddr   = '&proj3_P.Dampingb1_Gain';
pt(34).dtname     = 'real_T';



  
pt(35).blockname = 'Simulated motor/Gain Kt2';
pt(35).paramname = 'Gain';
pt(35).class     = 'scalar';
pt(35).nrows     = 1;
pt(35).ncols     = 1;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';
pt(35).isStruct  = false;
pt(35).symbol     = 'proj3_P.GainKt2_Gain';
pt(35).baseaddr   = '&proj3_P.GainKt2_Gain';
pt(35).dtname     = 'real_T';



  
pt(36).blockname = 'Simulated motor/Gain Kt3';
pt(36).paramname = 'Gain';
pt(36).class     = 'scalar';
pt(36).nrows     = 1;
pt(36).ncols     = 1;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';
pt(36).isStruct  = false;
pt(36).symbol     = 'proj3_P.GainKt3_Gain';
pt(36).baseaddr   = '&proj3_P.GainKt3_Gain';
pt(36).dtname     = 'real_T';



  
pt(37).blockname = 'Simulated motor/Inductance';
pt(37).paramname = 'Gain';
pt(37).class     = 'scalar';
pt(37).nrows     = 1;
pt(37).ncols     = 1;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';
pt(37).isStruct  = false;
pt(37).symbol     = 'proj3_P.Inductance_Gain';
pt(37).baseaddr   = '&proj3_P.Inductance_Gain';
pt(37).dtname     = 'real_T';



  
pt(38).blockname = 'Simulated motor/Resistance R1';
pt(38).paramname = 'Gain';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';
pt(38).isStruct  = false;
pt(38).symbol     = 'proj3_P.ResistanceR1_Gain';
pt(38).baseaddr   = '&proj3_P.ResistanceR1_Gain';
pt(38).dtname     = 'real_T';



  
pt(39).blockname = 'Simulated motor/Integrator1';
pt(39).paramname = 'InitialCondition';
pt(39).class     = 'scalar';
pt(39).nrows     = 1;
pt(39).ncols     = 1;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';
pt(39).isStruct  = false;
pt(39).symbol     = 'proj3_P.Integrator1_IC_j';
pt(39).baseaddr   = '&proj3_P.Integrator1_IC_j';
pt(39).dtname     = 'real_T';



  
pt(40).blockname = 'Simulated motor/Integrator5';
pt(40).paramname = 'InitialCondition';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';
pt(40).isStruct  = false;
pt(40).symbol     = 'proj3_P.Integrator5_IC';
pt(40).baseaddr   = '&proj3_P.Integrator5_IC';
pt(40).dtname     = 'real_T';



  
pt(41).blockname = 'Simulated motor/Integrator6';
pt(41).paramname = 'InitialCondition';
pt(41).class     = 'scalar';
pt(41).nrows     = 1;
pt(41).ncols     = 1;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';
pt(41).isStruct  = false;
pt(41).symbol     = 'proj3_P.Integrator6_IC';
pt(41).baseaddr   = '&proj3_P.Integrator6_IC';
pt(41).dtname     = 'real_T';


function len = getlenPT
len = 41;

