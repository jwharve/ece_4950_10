function pt=bakuppt
pt = [];

  
pt(1).blockname = 'Position';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  = false;
pt(1).symbol     = 'bakup_P.Position_Value';
pt(1).baseaddr   = '&bakup_P.Position_Value';
pt(1).dtname     = 'real_T';

pt(getlenPT) = pt(1);


  
pt(2).blockname = 'Switch';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_DOUBLE';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  = false;
pt(2).symbol     = 'bakup_P.Switch_Value';
pt(2).baseaddr   = '&bakup_P.Switch_Value';
pt(2).dtname     = 'real_T';



  
pt(3).blockname = 'o_c';
pt(3).paramname = 'Value';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_DOUBLE';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  = false;
pt(3).symbol     = 'bakup_P.o_c_Value';
pt(3).baseaddr   = '&bakup_P.o_c_Value';
pt(3).dtname     = 'real_T';



  
pt(4).blockname = 'Gain';
pt(4).paramname = 'Gain';
pt(4).class     = 'scalar';
pt(4).nrows     = 1;
pt(4).ncols     = 1;
pt(4).subsource = 'SS_DOUBLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  = false;
pt(4).symbol     = 'bakup_P.Gain_Gain';
pt(4).baseaddr   = '&bakup_P.Gain_Gain';
pt(4).dtname     = 'real_T';



  
pt(5).blockname = 'Kd';
pt(5).paramname = 'Gain';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_DOUBLE';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  = false;
pt(5).symbol     = 'bakup_P.Kd_Gain';
pt(5).baseaddr   = '&bakup_P.Kd_Gain';
pt(5).dtname     = 'real_T';



  
pt(6).blockname = 'Ki';
pt(6).paramname = 'Gain';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  = false;
pt(6).symbol     = 'bakup_P.Ki_Gain';
pt(6).baseaddr   = '&bakup_P.Ki_Gain';
pt(6).dtname     = 'real_T';



  
pt(7).blockname = 'Kp';
pt(7).paramname = 'Gain';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_DOUBLE';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  = false;
pt(7).symbol     = 'bakup_P.Kp_Gain';
pt(7).baseaddr   = '&bakup_P.Kp_Gain';
pt(7).dtname     = 'real_T';



  
pt(8).blockname = 'gain';
pt(8).paramname = 'Gain';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_DOUBLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  = false;
pt(8).symbol     = 'bakup_P.gain_Gain';
pt(8).baseaddr   = '&bakup_P.gain_Gain';
pt(8).dtname     = 'real_T';



  
pt(9).blockname = 'Integrator1';
pt(9).paramname = 'InitialCondition';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  = false;
pt(9).symbol     = 'bakup_P.Integrator1_IC';
pt(9).baseaddr   = '&bakup_P.Integrator1_IC';
pt(9).dtname     = 'real_T';



  
pt(10).blockname = 'Rate Limiter';
pt(10).paramname = 'RisingSlewLimit';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  = false;
pt(10).symbol     = 'bakup_P.RateLimiter_RisingLim';
pt(10).baseaddr   = '&bakup_P.RateLimiter_RisingLim';
pt(10).dtname     = 'real_T';



  
pt(11).blockname = 'Rate Limiter';
pt(11).paramname = 'FallingSlewLimit';
pt(11).class     = 'scalar';
pt(11).nrows     = 1;
pt(11).ncols     = 1;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  = false;
pt(11).symbol     = 'bakup_P.RateLimiter_FallingLim';
pt(11).baseaddr   = '&bakup_P.RateLimiter_FallingLim';
pt(11).dtname     = 'real_T';



  
pt(12).blockname = 'Rate Limiter';
pt(12).paramname = 'InitialCondition';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  = false;
pt(12).symbol     = 'bakup_P.RateLimiter_IC';
pt(12).baseaddr   = '&bakup_P.RateLimiter_IC';
pt(12).dtname     = 'real_T';



  
pt(13).blockname = 'Q4 Cnt ';
pt(13).paramname = 'P1';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  = false;
pt(13).symbol     = 'bakup_P.Q4Cnt_P1';
pt(13).baseaddr   = '&bakup_P.Q4Cnt_P1';
pt(13).dtname     = 'real_T';



  
pt(14).blockname = 'Q4 Cnt ';
pt(14).paramname = 'P2';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';
pt(14).isStruct  = false;
pt(14).symbol     = 'bakup_P.Q4Cnt_P2';
pt(14).baseaddr   = '&bakup_P.Q4Cnt_P2';
pt(14).dtname     = 'real_T';



  
pt(15).blockname = 'Q4 Cnt ';
pt(15).paramname = 'P3';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';
pt(15).isStruct  = false;
pt(15).symbol     = 'bakup_P.Q4Cnt_P3';
pt(15).baseaddr   = '&bakup_P.Q4Cnt_P3';
pt(15).dtname     = 'real_T';



  
pt(16).blockname = 'Q4 Cnt ';
pt(16).paramname = 'P4';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';
pt(16).isStruct  = false;
pt(16).symbol     = 'bakup_P.Q4Cnt_P4';
pt(16).baseaddr   = '&bakup_P.Q4Cnt_P4';
pt(16).dtname     = 'real_T';



  
pt(17).blockname = 'Q4 Cnt ';
pt(17).paramname = 'P5';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';
pt(17).isStruct  = false;
pt(17).symbol     = 'bakup_P.Q4Cnt_P5';
pt(17).baseaddr   = '&bakup_P.Q4Cnt_P5';
pt(17).dtname     = 'real_T';



  
pt(18).blockname = 'Q4 Cnt ';
pt(18).paramname = 'P6';
pt(18).class     = 'scalar';
pt(18).nrows     = 1;
pt(18).ncols     = 1;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';
pt(18).isStruct  = false;
pt(18).symbol     = 'bakup_P.Q4Cnt_P6';
pt(18).baseaddr   = '&bakup_P.Q4Cnt_P6';
pt(18).dtname     = 'real_T';



  
pt(19).blockname = 'Q4 Cnt ';
pt(19).paramname = 'P7';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';
pt(19).isStruct  = false;
pt(19).symbol     = 'bakup_P.Q4Cnt_P7';
pt(19).baseaddr   = '&bakup_P.Q4Cnt_P7';
pt(19).dtname     = 'real_T';



  
pt(20).blockname = 'Q4 Cnt ';
pt(20).paramname = 'P8';
pt(20).class     = 'scalar';
pt(20).nrows     = 1;
pt(20).ncols     = 1;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';
pt(20).isStruct  = false;
pt(20).symbol     = 'bakup_P.Q4Cnt_P8';
pt(20).baseaddr   = '&bakup_P.Q4Cnt_P8';
pt(20).dtname     = 'real_T';



  
pt(21).blockname = 'Q4 Cnt ';
pt(21).paramname = 'P9';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';
pt(21).isStruct  = false;
pt(21).symbol     = 'bakup_P.Q4Cnt_P9';
pt(21).baseaddr   = '&bakup_P.Q4Cnt_P9';
pt(21).dtname     = 'real_T';



  
pt(22).blockname = 'Q4 Cnt ';
pt(22).paramname = 'P10';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';
pt(22).isStruct  = false;
pt(22).symbol     = 'bakup_P.Q4Cnt_P10';
pt(22).baseaddr   = '&bakup_P.Q4Cnt_P10';
pt(22).dtname     = 'real_T';



  
pt(23).blockname = 'Q4 DI ';
pt(23).paramname = 'P1';
pt(23).class     = 'scalar';
pt(23).nrows     = 1;
pt(23).ncols     = 1;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';
pt(23).isStruct  = false;
pt(23).symbol     = 'bakup_P.Q4DI_P1';
pt(23).baseaddr   = '&bakup_P.Q4DI_P1';
pt(23).dtname     = 'real_T';



  
pt(24).blockname = 'Q4 DI ';
pt(24).paramname = 'P2';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';
pt(24).isStruct  = false;
pt(24).symbol     = 'bakup_P.Q4DI_P2';
pt(24).baseaddr   = '&bakup_P.Q4DI_P2';
pt(24).dtname     = 'real_T';



  
pt(25).blockname = 'Q4 DI ';
pt(25).paramname = 'P3';
pt(25).class     = 'scalar';
pt(25).nrows     = 1;
pt(25).ncols     = 1;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';
pt(25).isStruct  = false;
pt(25).symbol     = 'bakup_P.Q4DI_P3';
pt(25).baseaddr   = '&bakup_P.Q4DI_P3';
pt(25).dtname     = 'real_T';



  
pt(26).blockname = 'Q4 DI ';
pt(26).paramname = 'P4';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';
pt(26).isStruct  = false;
pt(26).symbol     = 'bakup_P.Q4DI_P4';
pt(26).baseaddr   = '&bakup_P.Q4DI_P4';
pt(26).dtname     = 'real_T';



  
pt(27).blockname = 'Q4 DI ';
pt(27).paramname = 'P5';
pt(27).class     = 'scalar';
pt(27).nrows     = 1;
pt(27).ncols     = 1;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';
pt(27).isStruct  = false;
pt(27).symbol     = 'bakup_P.Q4DI_P5';
pt(27).baseaddr   = '&bakup_P.Q4DI_P5';
pt(27).dtname     = 'real_T';



  
pt(28).blockname = 'Q4 DI ';
pt(28).paramname = 'P6';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_DOUBLE';
pt(28).ndims     = '2';
pt(28).size      = '[]';
pt(28).isStruct  = false;
pt(28).symbol     = 'bakup_P.Q4DI_P6';
pt(28).baseaddr   = '&bakup_P.Q4DI_P6';
pt(28).dtname     = 'real_T';



  
pt(29).blockname = 'Q4 DO ';
pt(29).paramname = 'P1';
pt(29).class     = 'scalar';
pt(29).nrows     = 1;
pt(29).ncols     = 1;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';
pt(29).isStruct  = false;
pt(29).symbol     = 'bakup_P.Q4DO_P1';
pt(29).baseaddr   = '&bakup_P.Q4DO_P1';
pt(29).dtname     = 'real_T';



  
pt(30).blockname = 'Q4 DO ';
pt(30).paramname = 'P2';
pt(30).class     = 'vector';
pt(30).nrows     = 1;
pt(30).ncols     = 4;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';
pt(30).isStruct  = false;
pt(30).symbol     = 'bakup_P.Q4DO_P2';
pt(30).baseaddr   = '&bakup_P.Q4DO_P2[0]';
pt(30).dtname     = 'real_T';



  
pt(31).blockname = 'Q4 DO ';
pt(31).paramname = 'P3';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';
pt(31).isStruct  = false;
pt(31).symbol     = 'bakup_P.Q4DO_P3';
pt(31).baseaddr   = '&bakup_P.Q4DO_P3';
pt(31).dtname     = 'real_T';



  
pt(32).blockname = 'Q4 DO ';
pt(32).paramname = 'P4';
pt(32).class     = 'vector';
pt(32).nrows     = 1;
pt(32).ncols     = 4;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';
pt(32).isStruct  = false;
pt(32).symbol     = 'bakup_P.Q4DO_P4';
pt(32).baseaddr   = '&bakup_P.Q4DO_P4[0]';
pt(32).dtname     = 'real_T';



  
pt(33).blockname = 'Q4 DO ';
pt(33).paramname = 'P5';
pt(33).class     = 'vector';
pt(33).nrows     = 1;
pt(33).ncols     = 4;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';
pt(33).isStruct  = false;
pt(33).symbol     = 'bakup_P.Q4DO_P5';
pt(33).baseaddr   = '&bakup_P.Q4DO_P5[0]';
pt(33).dtname     = 'real_T';



  
pt(34).blockname = 'Q4 DO ';
pt(34).paramname = 'P6';
pt(34).class     = 'scalar';
pt(34).nrows     = 1;
pt(34).ncols     = 1;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';
pt(34).isStruct  = false;
pt(34).symbol     = 'bakup_P.Q4DO_P6';
pt(34).baseaddr   = '&bakup_P.Q4DO_P6';
pt(34).dtname     = 'real_T';



  
pt(35).blockname = 'Q4 DO ';
pt(35).paramname = 'P7';
pt(35).class     = 'scalar';
pt(35).nrows     = 1;
pt(35).ncols     = 1;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';
pt(35).isStruct  = false;
pt(35).symbol     = 'bakup_P.Q4DO_P7';
pt(35).baseaddr   = '&bakup_P.Q4DO_P7';
pt(35).dtname     = 'real_T';



  
pt(36).blockname = 'Q4 DO ';
pt(36).paramname = 'P8';
pt(36).class     = 'scalar';
pt(36).nrows     = 1;
pt(36).ncols     = 1;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';
pt(36).isStruct  = false;
pt(36).symbol     = 'bakup_P.Q4DO_P8';
pt(36).baseaddr   = '&bakup_P.Q4DO_P8';
pt(36).dtname     = 'real_T';



  
pt(37).blockname = 'load_cell';
pt(37).paramname = 'P1';
pt(37).class     = 'scalar';
pt(37).nrows     = 1;
pt(37).ncols     = 1;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';
pt(37).isStruct  = false;
pt(37).symbol     = 'bakup_P.load_cell_P1';
pt(37).baseaddr   = '&bakup_P.load_cell_P1';
pt(37).dtname     = 'real_T';



  
pt(38).blockname = 'load_cell';
pt(38).paramname = 'P2';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';
pt(38).isStruct  = false;
pt(38).symbol     = 'bakup_P.load_cell_P2';
pt(38).baseaddr   = '&bakup_P.load_cell_P2';
pt(38).dtname     = 'real_T';



  
pt(39).blockname = 'load_cell';
pt(39).paramname = 'P3';
pt(39).class     = 'scalar';
pt(39).nrows     = 1;
pt(39).ncols     = 1;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';
pt(39).isStruct  = false;
pt(39).symbol     = 'bakup_P.load_cell_P3';
pt(39).baseaddr   = '&bakup_P.load_cell_P3';
pt(39).dtname     = 'real_T';



  
pt(40).blockname = 'load_cell';
pt(40).paramname = 'P5';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';
pt(40).isStruct  = false;
pt(40).symbol     = 'bakup_P.load_cell_P5';
pt(40).baseaddr   = '&bakup_P.load_cell_P5';
pt(40).dtname     = 'real_T';



  
pt(41).blockname = 'load_cell';
pt(41).paramname = 'P6';
pt(41).class     = 'scalar';
pt(41).nrows     = 1;
pt(41).ncols     = 1;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';
pt(41).isStruct  = false;
pt(41).symbol     = 'bakup_P.load_cell_P6';
pt(41).baseaddr   = '&bakup_P.load_cell_P6';
pt(41).dtname     = 'real_T';



  
pt(42).blockname = 'load_cell';
pt(42).paramname = 'P7';
pt(42).class     = 'scalar';
pt(42).nrows     = 1;
pt(42).ncols     = 1;
pt(42).subsource = 'SS_DOUBLE';
pt(42).ndims     = '2';
pt(42).size      = '[]';
pt(42).isStruct  = false;
pt(42).symbol     = 'bakup_P.load_cell_P7';
pt(42).baseaddr   = '&bakup_P.load_cell_P7';
pt(42).dtname     = 'real_T';



  
pt(43).blockname = 'Real motor/angular_position =  [relative_count//COUNTS_PER_REV] *360 degrees';
pt(43).paramname = 'Gain';
pt(43).class     = 'scalar';
pt(43).nrows     = 1;
pt(43).ncols     = 1;
pt(43).subsource = 'SS_DOUBLE';
pt(43).ndims     = '2';
pt(43).size      = '[]';
pt(43).isStruct  = false;
pt(43).symbol     = 'bakup_P.angular_positionrelative_countC';
pt(43).baseaddr   = '&bakup_P.angular_positionrelative_countC';
pt(43).dtname     = 'real_T';



  
pt(44).blockname = 'Real motor/Saturation';
pt(44).paramname = 'UpperLimit';
pt(44).class     = 'scalar';
pt(44).nrows     = 1;
pt(44).ncols     = 1;
pt(44).subsource = 'SS_DOUBLE';
pt(44).ndims     = '2';
pt(44).size      = '[]';
pt(44).isStruct  = false;
pt(44).symbol     = 'bakup_P.Saturation_UpperSat';
pt(44).baseaddr   = '&bakup_P.Saturation_UpperSat';
pt(44).dtname     = 'real_T';



  
pt(45).blockname = 'Real motor/Saturation';
pt(45).paramname = 'LowerLimit';
pt(45).class     = 'scalar';
pt(45).nrows     = 1;
pt(45).ncols     = 1;
pt(45).subsource = 'SS_DOUBLE';
pt(45).ndims     = '2';
pt(45).size      = '[]';
pt(45).isStruct  = false;
pt(45).symbol     = 'bakup_P.Saturation_LowerSat';
pt(45).baseaddr   = '&bakup_P.Saturation_LowerSat';
pt(45).dtname     = 'real_T';



  
pt(46).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(46).paramname = 'P1';
pt(46).class     = 'scalar';
pt(46).nrows     = 1;
pt(46).ncols     = 1;
pt(46).subsource = 'SS_DOUBLE';
pt(46).ndims     = '2';
pt(46).size      = '[]';
pt(46).isStruct  = false;
pt(46).symbol     = 'bakup_P.Channel0Controlsignaltomotort_m';
pt(46).baseaddr   = '&bakup_P.Channel0Controlsignaltomotort_m';
pt(46).dtname     = 'real_T';



  
pt(47).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(47).paramname = 'P2';
pt(47).class     = 'scalar';
pt(47).nrows     = 1;
pt(47).ncols     = 1;
pt(47).subsource = 'SS_DOUBLE';
pt(47).ndims     = '2';
pt(47).size      = '[]';
pt(47).isStruct  = false;
pt(47).symbol     = 'bakup_P.Channel0Controlsignaltomotort_k';
pt(47).baseaddr   = '&bakup_P.Channel0Controlsignaltomotort_k';
pt(47).dtname     = 'real_T';



  
pt(48).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(48).paramname = 'P3';
pt(48).class     = 'scalar';
pt(48).nrows     = 1;
pt(48).ncols     = 1;
pt(48).subsource = 'SS_DOUBLE';
pt(48).ndims     = '2';
pt(48).size      = '[]';
pt(48).isStruct  = false;
pt(48).symbol     = 'bakup_P.Channel0Controlsignaltomotort_c';
pt(48).baseaddr   = '&bakup_P.Channel0Controlsignaltomotort_c';
pt(48).dtname     = 'real_T';



  
pt(49).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(49).paramname = 'P4';
pt(49).class     = 'scalar';
pt(49).nrows     = 1;
pt(49).ncols     = 1;
pt(49).subsource = 'SS_DOUBLE';
pt(49).ndims     = '2';
pt(49).size      = '[]';
pt(49).isStruct  = false;
pt(49).symbol     = 'bakup_P.Channel0Controlsignaltomotort_d';
pt(49).baseaddr   = '&bakup_P.Channel0Controlsignaltomotort_d';
pt(49).dtname     = 'real_T';



  
pt(50).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(50).paramname = 'P5';
pt(50).class     = 'scalar';
pt(50).nrows     = 1;
pt(50).ncols     = 1;
pt(50).subsource = 'SS_DOUBLE';
pt(50).ndims     = '2';
pt(50).size      = '[]';
pt(50).isStruct  = false;
pt(50).symbol     = 'bakup_P.Channel0Controlsignaltomotort_n';
pt(50).baseaddr   = '&bakup_P.Channel0Controlsignaltomotort_n';
pt(50).dtname     = 'real_T';



  
pt(51).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(51).paramname = 'P6';
pt(51).class     = 'scalar';
pt(51).nrows     = 1;
pt(51).ncols     = 1;
pt(51).subsource = 'SS_DOUBLE';
pt(51).ndims     = '2';
pt(51).size      = '[]';
pt(51).isStruct  = false;
pt(51).symbol     = 'bakup_P.Channel0Controlsignaltomotort_g';
pt(51).baseaddr   = '&bakup_P.Channel0Controlsignaltomotort_g';
pt(51).dtname     = 'real_T';



  
pt(52).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(52).paramname = 'P7';
pt(52).class     = 'scalar';
pt(52).nrows     = 1;
pt(52).ncols     = 1;
pt(52).subsource = 'SS_DOUBLE';
pt(52).ndims     = '2';
pt(52).size      = '[]';
pt(52).isStruct  = false;
pt(52).symbol     = 'bakup_P.Channel0Controlsignaltomotort_f';
pt(52).baseaddr   = '&bakup_P.Channel0Controlsignaltomotort_f';
pt(52).dtname     = 'real_T';



  
pt(53).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(53).paramname = 'P8';
pt(53).class     = 'scalar';
pt(53).nrows     = 1;
pt(53).ncols     = 1;
pt(53).subsource = 'SS_DOUBLE';
pt(53).ndims     = '2';
pt(53).size      = '[]';
pt(53).isStruct  = false;
pt(53).symbol     = 'bakup_P.Channel0Controlsignaltomotor_gv';
pt(53).baseaddr   = '&bakup_P.Channel0Controlsignaltomotor_gv';
pt(53).dtname     = 'real_T';



  
pt(54).blockname = 'Real motor/Channel 0 -Control signal to  motor through amplifier ';
pt(54).paramname = 'P9';
pt(54).class     = 'scalar';
pt(54).nrows     = 1;
pt(54).ncols     = 1;
pt(54).subsource = 'SS_DOUBLE';
pt(54).ndims     = '2';
pt(54).size      = '[]';
pt(54).isStruct  = false;
pt(54).symbol     = 'bakup_P.Channel0Controlsignaltomotor_gp';
pt(54).baseaddr   = '&bakup_P.Channel0Controlsignaltomotor_gp';
pt(54).dtname     = 'real_T';



  
pt(55).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(55).paramname = 'P1';
pt(55).class     = 'scalar';
pt(55).nrows     = 1;
pt(55).ncols     = 1;
pt(55).subsource = 'SS_DOUBLE';
pt(55).ndims     = '2';
pt(55).size      = '[]';
pt(55).isStruct  = false;
pt(55).symbol     = 'bakup_P.Channel0ofEncoderInputs_P1';
pt(55).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P1';
pt(55).dtname     = 'real_T';



  
pt(56).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(56).paramname = 'P2';
pt(56).class     = 'scalar';
pt(56).nrows     = 1;
pt(56).ncols     = 1;
pt(56).subsource = 'SS_DOUBLE';
pt(56).ndims     = '2';
pt(56).size      = '[]';
pt(56).isStruct  = false;
pt(56).symbol     = 'bakup_P.Channel0ofEncoderInputs_P2';
pt(56).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P2';
pt(56).dtname     = 'real_T';



  
pt(57).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(57).paramname = 'P3';
pt(57).class     = 'scalar';
pt(57).nrows     = 1;
pt(57).ncols     = 1;
pt(57).subsource = 'SS_DOUBLE';
pt(57).ndims     = '2';
pt(57).size      = '[]';
pt(57).isStruct  = false;
pt(57).symbol     = 'bakup_P.Channel0ofEncoderInputs_P3';
pt(57).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P3';
pt(57).dtname     = 'real_T';



  
pt(58).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(58).paramname = 'P4';
pt(58).class     = 'scalar';
pt(58).nrows     = 1;
pt(58).ncols     = 1;
pt(58).subsource = 'SS_DOUBLE';
pt(58).ndims     = '2';
pt(58).size      = '[]';
pt(58).isStruct  = false;
pt(58).symbol     = 'bakup_P.Channel0ofEncoderInputs_P4';
pt(58).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P4';
pt(58).dtname     = 'real_T';



  
pt(59).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(59).paramname = 'P5';
pt(59).class     = 'scalar';
pt(59).nrows     = 1;
pt(59).ncols     = 1;
pt(59).subsource = 'SS_DOUBLE';
pt(59).ndims     = '2';
pt(59).size      = '[]';
pt(59).isStruct  = false;
pt(59).symbol     = 'bakup_P.Channel0ofEncoderInputs_P5';
pt(59).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P5';
pt(59).dtname     = 'real_T';



  
pt(60).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(60).paramname = 'P6';
pt(60).class     = 'scalar';
pt(60).nrows     = 1;
pt(60).ncols     = 1;
pt(60).subsource = 'SS_DOUBLE';
pt(60).ndims     = '2';
pt(60).size      = '[]';
pt(60).isStruct  = false;
pt(60).symbol     = 'bakup_P.Channel0ofEncoderInputs_P6';
pt(60).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P6';
pt(60).dtname     = 'real_T';



  
pt(61).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(61).paramname = 'P7';
pt(61).class     = 'scalar';
pt(61).nrows     = 1;
pt(61).ncols     = 1;
pt(61).subsource = 'SS_DOUBLE';
pt(61).ndims     = '2';
pt(61).size      = '[]';
pt(61).isStruct  = false;
pt(61).symbol     = 'bakup_P.Channel0ofEncoderInputs_P7';
pt(61).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P7';
pt(61).dtname     = 'real_T';



  
pt(62).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(62).paramname = 'P8';
pt(62).class     = 'scalar';
pt(62).nrows     = 1;
pt(62).ncols     = 1;
pt(62).subsource = 'SS_DOUBLE';
pt(62).ndims     = '2';
pt(62).size      = '[]';
pt(62).isStruct  = false;
pt(62).symbol     = 'bakup_P.Channel0ofEncoderInputs_P8';
pt(62).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P8';
pt(62).dtname     = 'real_T';



  
pt(63).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(63).paramname = 'P9';
pt(63).class     = 'scalar';
pt(63).nrows     = 1;
pt(63).ncols     = 1;
pt(63).subsource = 'SS_DOUBLE';
pt(63).ndims     = '2';
pt(63).size      = '[]';
pt(63).isStruct  = false;
pt(63).symbol     = 'bakup_P.Channel0ofEncoderInputs_P9';
pt(63).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P9';
pt(63).dtname     = 'real_T';



  
pt(64).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(64).paramname = 'P10';
pt(64).class     = 'scalar';
pt(64).nrows     = 1;
pt(64).ncols     = 1;
pt(64).subsource = 'SS_DOUBLE';
pt(64).ndims     = '2';
pt(64).size      = '[]';
pt(64).isStruct  = false;
pt(64).symbol     = 'bakup_P.Channel0ofEncoderInputs_P10';
pt(64).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P10';
pt(64).dtname     = 'real_T';



  
pt(65).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(65).paramname = 'P11';
pt(65).class     = 'scalar';
pt(65).nrows     = 1;
pt(65).ncols     = 1;
pt(65).subsource = 'SS_DOUBLE';
pt(65).ndims     = '2';
pt(65).size      = '[]';
pt(65).isStruct  = false;
pt(65).symbol     = 'bakup_P.Channel0ofEncoderInputs_P11';
pt(65).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P11';
pt(65).dtname     = 'real_T';



  
pt(66).blockname = 'Real motor/Channel 0 of  Encoder Inputs ';
pt(66).paramname = 'P12';
pt(66).class     = 'scalar';
pt(66).nrows     = 1;
pt(66).ncols     = 1;
pt(66).subsource = 'SS_DOUBLE';
pt(66).ndims     = '2';
pt(66).size      = '[]';
pt(66).isStruct  = false;
pt(66).symbol     = 'bakup_P.Channel0ofEncoderInputs_P12';
pt(66).baseaddr   = '&bakup_P.Channel0ofEncoderInputs_P12';
pt(66).dtname     = 'real_T';



  
pt(67).blockname = 'Simulated motor/Back emf Ke1';
pt(67).paramname = 'Gain';
pt(67).class     = 'scalar';
pt(67).nrows     = 1;
pt(67).ncols     = 1;
pt(67).subsource = 'SS_DOUBLE';
pt(67).ndims     = '2';
pt(67).size      = '[]';
pt(67).isStruct  = false;
pt(67).symbol     = 'bakup_P.BackemfKe1_Gain';
pt(67).baseaddr   = '&bakup_P.BackemfKe1_Gain';
pt(67).dtname     = 'real_T';



  
pt(68).blockname = 'Simulated motor/Damping b1';
pt(68).paramname = 'Gain';
pt(68).class     = 'scalar';
pt(68).nrows     = 1;
pt(68).ncols     = 1;
pt(68).subsource = 'SS_DOUBLE';
pt(68).ndims     = '2';
pt(68).size      = '[]';
pt(68).isStruct  = false;
pt(68).symbol     = 'bakup_P.Dampingb1_Gain';
pt(68).baseaddr   = '&bakup_P.Dampingb1_Gain';
pt(68).dtname     = 'real_T';



  
pt(69).blockname = 'Simulated motor/Gain Kt2';
pt(69).paramname = 'Gain';
pt(69).class     = 'scalar';
pt(69).nrows     = 1;
pt(69).ncols     = 1;
pt(69).subsource = 'SS_DOUBLE';
pt(69).ndims     = '2';
pt(69).size      = '[]';
pt(69).isStruct  = false;
pt(69).symbol     = 'bakup_P.GainKt2_Gain';
pt(69).baseaddr   = '&bakup_P.GainKt2_Gain';
pt(69).dtname     = 'real_T';



  
pt(70).blockname = 'Simulated motor/Gain Kt3';
pt(70).paramname = 'Gain';
pt(70).class     = 'scalar';
pt(70).nrows     = 1;
pt(70).ncols     = 1;
pt(70).subsource = 'SS_DOUBLE';
pt(70).ndims     = '2';
pt(70).size      = '[]';
pt(70).isStruct  = false;
pt(70).symbol     = 'bakup_P.GainKt3_Gain';
pt(70).baseaddr   = '&bakup_P.GainKt3_Gain';
pt(70).dtname     = 'real_T';



  
pt(71).blockname = 'Simulated motor/Inductance';
pt(71).paramname = 'Gain';
pt(71).class     = 'scalar';
pt(71).nrows     = 1;
pt(71).ncols     = 1;
pt(71).subsource = 'SS_DOUBLE';
pt(71).ndims     = '2';
pt(71).size      = '[]';
pt(71).isStruct  = false;
pt(71).symbol     = 'bakup_P.Inductance_Gain';
pt(71).baseaddr   = '&bakup_P.Inductance_Gain';
pt(71).dtname     = 'real_T';



  
pt(72).blockname = 'Simulated motor/Resistance R1';
pt(72).paramname = 'Gain';
pt(72).class     = 'scalar';
pt(72).nrows     = 1;
pt(72).ncols     = 1;
pt(72).subsource = 'SS_DOUBLE';
pt(72).ndims     = '2';
pt(72).size      = '[]';
pt(72).isStruct  = false;
pt(72).symbol     = 'bakup_P.ResistanceR1_Gain';
pt(72).baseaddr   = '&bakup_P.ResistanceR1_Gain';
pt(72).dtname     = 'real_T';



  
pt(73).blockname = 'Simulated motor/Integrator1';
pt(73).paramname = 'InitialCondition';
pt(73).class     = 'scalar';
pt(73).nrows     = 1;
pt(73).ncols     = 1;
pt(73).subsource = 'SS_DOUBLE';
pt(73).ndims     = '2';
pt(73).size      = '[]';
pt(73).isStruct  = false;
pt(73).symbol     = 'bakup_P.Integrator1_IC_j';
pt(73).baseaddr   = '&bakup_P.Integrator1_IC_j';
pt(73).dtname     = 'real_T';



  
pt(74).blockname = 'Simulated motor/Integrator5';
pt(74).paramname = 'InitialCondition';
pt(74).class     = 'scalar';
pt(74).nrows     = 1;
pt(74).ncols     = 1;
pt(74).subsource = 'SS_DOUBLE';
pt(74).ndims     = '2';
pt(74).size      = '[]';
pt(74).isStruct  = false;
pt(74).symbol     = 'bakup_P.Integrator5_IC';
pt(74).baseaddr   = '&bakup_P.Integrator5_IC';
pt(74).dtname     = 'real_T';



  
pt(75).blockname = 'Simulated motor/Integrator6';
pt(75).paramname = 'InitialCondition';
pt(75).class     = 'scalar';
pt(75).nrows     = 1;
pt(75).ncols     = 1;
pt(75).subsource = 'SS_DOUBLE';
pt(75).ndims     = '2';
pt(75).size      = '[]';
pt(75).isStruct  = false;
pt(75).symbol     = 'bakup_P.Integrator6_IC';
pt(75).baseaddr   = '&bakup_P.Integrator6_IC';
pt(75).dtname     = 'real_T';



  
pt(76).blockname = 'stepper_down/Detect Rise Positive';
pt(76).paramname = 'vinit';
pt(76).class     = 'scalar';
pt(76).nrows     = 1;
pt(76).ncols     = 1;
pt(76).subsource = 'SS_UINT8';
pt(76).ndims     = '2';
pt(76).size      = '[]';
pt(76).isStruct  = false;
pt(76).symbol     = 'bakup_P.DetectRisePositive_vinit_j';
pt(76).baseaddr   = '&bakup_P.DetectRisePositive_vinit_j';
pt(76).dtname     = 'uint8_T';



  
pt(77).blockname = 'stepper_down/Constant';
pt(77).paramname = 'Value';
pt(77).class     = 'scalar';
pt(77).nrows     = 1;
pt(77).ncols     = 1;
pt(77).subsource = 'SS_DOUBLE';
pt(77).ndims     = '2';
pt(77).size      = '[]';
pt(77).isStruct  = false;
pt(77).symbol     = 'bakup_P.Constant_Value';
pt(77).baseaddr   = '&bakup_P.Constant_Value';
pt(77).dtname     = 'real_T';



  
pt(78).blockname = 'stepper_down/enable';
pt(78).paramname = 'Value';
pt(78).class     = 'scalar';
pt(78).nrows     = 1;
pt(78).ncols     = 1;
pt(78).subsource = 'SS_UINT32';
pt(78).ndims     = '2';
pt(78).size      = '[]';
pt(78).isStruct  = false;
pt(78).symbol     = 'bakup_P.enable_Value_b';
pt(78).baseaddr   = '&bakup_P.enable_Value_b';
pt(78).dtname     = 'uint32_T';



  
pt(79).blockname = 'stepper_down/my_dir';
pt(79).paramname = 'Value';
pt(79).class     = 'scalar';
pt(79).nrows     = 1;
pt(79).ncols     = 1;
pt(79).subsource = 'SS_DOUBLE';
pt(79).ndims     = '2';
pt(79).size      = '[]';
pt(79).isStruct  = false;
pt(79).symbol     = 'bakup_P.my_dir_Value_e';
pt(79).baseaddr   = '&bakup_P.my_dir_Value_e';
pt(79).dtname     = 'real_T';



  
pt(80).blockname = 'stepper_down/step_pulse';
pt(80).paramname = 'Amplitude';
pt(80).class     = 'scalar';
pt(80).nrows     = 1;
pt(80).ncols     = 1;
pt(80).subsource = 'SS_DOUBLE';
pt(80).ndims     = '2';
pt(80).size      = '[]';
pt(80).isStruct  = false;
pt(80).symbol     = 'bakup_P.step_pulse_Amp_i';
pt(80).baseaddr   = '&bakup_P.step_pulse_Amp_i';
pt(80).dtname     = 'real_T';



  
pt(81).blockname = 'stepper_down/step_pulse';
pt(81).paramname = 'Period';
pt(81).class     = 'scalar';
pt(81).nrows     = 1;
pt(81).ncols     = 1;
pt(81).subsource = 'SS_DOUBLE';
pt(81).ndims     = '2';
pt(81).size      = '[]';
pt(81).isStruct  = false;
pt(81).symbol     = 'bakup_P.step_pulse_Period_a';
pt(81).baseaddr   = '&bakup_P.step_pulse_Period_a';
pt(81).dtname     = 'real_T';



  
pt(82).blockname = 'stepper_down/step_pulse';
pt(82).paramname = 'PulseWidth';
pt(82).class     = 'scalar';
pt(82).nrows     = 1;
pt(82).ncols     = 1;
pt(82).subsource = 'SS_DOUBLE';
pt(82).ndims     = '2';
pt(82).size      = '[]';
pt(82).isStruct  = false;
pt(82).symbol     = 'bakup_P.step_pulse_Duty_j';
pt(82).baseaddr   = '&bakup_P.step_pulse_Duty_j';
pt(82).dtname     = 'real_T';



  
pt(83).blockname = 'stepper_down/step_pulse';
pt(83).paramname = 'PhaseDelay';
pt(83).class     = 'scalar';
pt(83).nrows     = 1;
pt(83).ncols     = 1;
pt(83).subsource = 'SS_DOUBLE';
pt(83).ndims     = '2';
pt(83).size      = '[]';
pt(83).isStruct  = false;
pt(83).symbol     = 'bakup_P.step_pulse_PhaseDelay_n';
pt(83).baseaddr   = '&bakup_P.step_pulse_PhaseDelay_n';
pt(83).dtname     = 'real_T';



  
pt(84).blockname = 'stepper_down/switch';
pt(84).paramname = 'Threshold';
pt(84).class     = 'scalar';
pt(84).nrows     = 1;
pt(84).ncols     = 1;
pt(84).subsource = 'SS_UINT32';
pt(84).ndims     = '2';
pt(84).size      = '[]';
pt(84).isStruct  = false;
pt(84).symbol     = 'bakup_P.switch_Threshold_f';
pt(84).baseaddr   = '&bakup_P.switch_Threshold_f';
pt(84).dtname     = 'uint32_T';



  
pt(85).blockname = 'stepper_down/Unit Delay';
pt(85).paramname = 'InitialCondition';
pt(85).class     = 'scalar';
pt(85).nrows     = 1;
pt(85).ncols     = 1;
pt(85).subsource = 'SS_UINT32';
pt(85).ndims     = '2';
pt(85).size      = '[]';
pt(85).isStruct  = false;
pt(85).symbol     = 'bakup_P.UnitDelay_InitialCondition_k';
pt(85).baseaddr   = '&bakup_P.UnitDelay_InitialCondition_k';
pt(85).dtname     = 'uint32_T';



  
pt(86).blockname = 'stepper_out/Detect Rise Positive';
pt(86).paramname = 'vinit';
pt(86).class     = 'scalar';
pt(86).nrows     = 1;
pt(86).ncols     = 1;
pt(86).subsource = 'SS_UINT8';
pt(86).ndims     = '2';
pt(86).size      = '[]';
pt(86).isStruct  = false;
pt(86).symbol     = 'bakup_P.DetectRisePositive_vinit';
pt(86).baseaddr   = '&bakup_P.DetectRisePositive_vinit';
pt(86).dtname     = 'uint8_T';



  
pt(87).blockname = 'stepper_out/Constant';
pt(87).paramname = 'Value';
pt(87).class     = 'scalar';
pt(87).nrows     = 1;
pt(87).ncols     = 1;
pt(87).subsource = 'SS_DOUBLE';
pt(87).ndims     = '2';
pt(87).size      = '[]';
pt(87).isStruct  = false;
pt(87).symbol     = 'bakup_P.Constant_Value_h';
pt(87).baseaddr   = '&bakup_P.Constant_Value_h';
pt(87).dtname     = 'real_T';



  
pt(88).blockname = 'stepper_out/enable';
pt(88).paramname = 'Value';
pt(88).class     = 'scalar';
pt(88).nrows     = 1;
pt(88).ncols     = 1;
pt(88).subsource = 'SS_UINT32';
pt(88).ndims     = '2';
pt(88).size      = '[]';
pt(88).isStruct  = false;
pt(88).symbol     = 'bakup_P.enable_Value_i';
pt(88).baseaddr   = '&bakup_P.enable_Value_i';
pt(88).dtname     = 'uint32_T';



  
pt(89).blockname = 'stepper_out/my_dir';
pt(89).paramname = 'Value';
pt(89).class     = 'scalar';
pt(89).nrows     = 1;
pt(89).ncols     = 1;
pt(89).subsource = 'SS_DOUBLE';
pt(89).ndims     = '2';
pt(89).size      = '[]';
pt(89).isStruct  = false;
pt(89).symbol     = 'bakup_P.my_dir_Value';
pt(89).baseaddr   = '&bakup_P.my_dir_Value';
pt(89).dtname     = 'real_T';



  
pt(90).blockname = 'stepper_out/step_pulse';
pt(90).paramname = 'Amplitude';
pt(90).class     = 'scalar';
pt(90).nrows     = 1;
pt(90).ncols     = 1;
pt(90).subsource = 'SS_DOUBLE';
pt(90).ndims     = '2';
pt(90).size      = '[]';
pt(90).isStruct  = false;
pt(90).symbol     = 'bakup_P.step_pulse_Amp';
pt(90).baseaddr   = '&bakup_P.step_pulse_Amp';
pt(90).dtname     = 'real_T';



  
pt(91).blockname = 'stepper_out/step_pulse';
pt(91).paramname = 'Period';
pt(91).class     = 'scalar';
pt(91).nrows     = 1;
pt(91).ncols     = 1;
pt(91).subsource = 'SS_DOUBLE';
pt(91).ndims     = '2';
pt(91).size      = '[]';
pt(91).isStruct  = false;
pt(91).symbol     = 'bakup_P.step_pulse_Period';
pt(91).baseaddr   = '&bakup_P.step_pulse_Period';
pt(91).dtname     = 'real_T';



  
pt(92).blockname = 'stepper_out/step_pulse';
pt(92).paramname = 'PulseWidth';
pt(92).class     = 'scalar';
pt(92).nrows     = 1;
pt(92).ncols     = 1;
pt(92).subsource = 'SS_DOUBLE';
pt(92).ndims     = '2';
pt(92).size      = '[]';
pt(92).isStruct  = false;
pt(92).symbol     = 'bakup_P.step_pulse_Duty';
pt(92).baseaddr   = '&bakup_P.step_pulse_Duty';
pt(92).dtname     = 'real_T';



  
pt(93).blockname = 'stepper_out/step_pulse';
pt(93).paramname = 'PhaseDelay';
pt(93).class     = 'scalar';
pt(93).nrows     = 1;
pt(93).ncols     = 1;
pt(93).subsource = 'SS_DOUBLE';
pt(93).ndims     = '2';
pt(93).size      = '[]';
pt(93).isStruct  = false;
pt(93).symbol     = 'bakup_P.step_pulse_PhaseDelay';
pt(93).baseaddr   = '&bakup_P.step_pulse_PhaseDelay';
pt(93).dtname     = 'real_T';



  
pt(94).blockname = 'stepper_out/switch';
pt(94).paramname = 'Threshold';
pt(94).class     = 'scalar';
pt(94).nrows     = 1;
pt(94).ncols     = 1;
pt(94).subsource = 'SS_UINT32';
pt(94).ndims     = '2';
pt(94).size      = '[]';
pt(94).isStruct  = false;
pt(94).symbol     = 'bakup_P.switch_Threshold';
pt(94).baseaddr   = '&bakup_P.switch_Threshold';
pt(94).dtname     = 'uint32_T';



  
pt(95).blockname = 'stepper_out/Unit Delay';
pt(95).paramname = 'InitialCondition';
pt(95).class     = 'scalar';
pt(95).nrows     = 1;
pt(95).ncols     = 1;
pt(95).subsource = 'SS_UINT32';
pt(95).ndims     = '2';
pt(95).size      = '[]';
pt(95).isStruct  = false;
pt(95).symbol     = 'bakup_P.UnitDelay_InitialCondition_f';
pt(95).baseaddr   = '&bakup_P.UnitDelay_InitialCondition_f';
pt(95).dtname     = 'uint32_T';



  
pt(96).blockname = 'timer/Detect Rise Positive';
pt(96).paramname = 'vinit';
pt(96).class     = 'scalar';
pt(96).nrows     = 1;
pt(96).ncols     = 1;
pt(96).subsource = 'SS_UINT8';
pt(96).ndims     = '2';
pt(96).size      = '[]';
pt(96).isStruct  = false;
pt(96).symbol     = 'bakup_P.DetectRisePositive_vinit_i';
pt(96).baseaddr   = '&bakup_P.DetectRisePositive_vinit_i';
pt(96).dtname     = 'uint8_T';



  
pt(97).blockname = 'timer/delay_ticks';
pt(97).paramname = 'Value';
pt(97).class     = 'scalar';
pt(97).nrows     = 1;
pt(97).ncols     = 1;
pt(97).subsource = 'SS_DOUBLE';
pt(97).ndims     = '2';
pt(97).size      = '[]';
pt(97).isStruct  = false;
pt(97).symbol     = 'bakup_P.delay_ticks_Value';
pt(97).baseaddr   = '&bakup_P.delay_ticks_Value';
pt(97).dtname     = 'real_T';



  
pt(98).blockname = 'timer/enable';
pt(98).paramname = 'Value';
pt(98).class     = 'scalar';
pt(98).nrows     = 1;
pt(98).ncols     = 1;
pt(98).subsource = 'SS_DOUBLE';
pt(98).ndims     = '2';
pt(98).size      = '[]';
pt(98).isStruct  = false;
pt(98).symbol     = 'bakup_P.enable_Value';
pt(98).baseaddr   = '&bakup_P.enable_Value';
pt(98).dtname     = 'real_T';



  
pt(99).blockname = 'timer/clock';
pt(99).paramname = 'Amplitude';
pt(99).class     = 'scalar';
pt(99).nrows     = 1;
pt(99).ncols     = 1;
pt(99).subsource = 'SS_DOUBLE';
pt(99).ndims     = '2';
pt(99).size      = '[]';
pt(99).isStruct  = false;
pt(99).symbol     = 'bakup_P.clock_Amp';
pt(99).baseaddr   = '&bakup_P.clock_Amp';
pt(99).dtname     = 'real_T';



  
pt(100).blockname = 'timer/clock';
pt(100).paramname = 'Period';
pt(100).class     = 'scalar';
pt(100).nrows     = 1;
pt(100).ncols     = 1;
pt(100).subsource = 'SS_DOUBLE';
pt(100).ndims     = '2';
pt(100).size      = '[]';
pt(100).isStruct  = false;
pt(100).symbol     = 'bakup_P.clock_Period';
pt(100).baseaddr   = '&bakup_P.clock_Period';
pt(100).dtname     = 'real_T';



  
pt(101).blockname = 'timer/clock';
pt(101).paramname = 'PulseWidth';
pt(101).class     = 'scalar';
pt(101).nrows     = 1;
pt(101).ncols     = 1;
pt(101).subsource = 'SS_DOUBLE';
pt(101).ndims     = '2';
pt(101).size      = '[]';
pt(101).isStruct  = false;
pt(101).symbol     = 'bakup_P.clock_Duty';
pt(101).baseaddr   = '&bakup_P.clock_Duty';
pt(101).dtname     = 'real_T';



  
pt(102).blockname = 'timer/clock';
pt(102).paramname = 'PhaseDelay';
pt(102).class     = 'scalar';
pt(102).nrows     = 1;
pt(102).ncols     = 1;
pt(102).subsource = 'SS_DOUBLE';
pt(102).ndims     = '2';
pt(102).size      = '[]';
pt(102).isStruct  = false;
pt(102).symbol     = 'bakup_P.clock_PhaseDelay';
pt(102).baseaddr   = '&bakup_P.clock_PhaseDelay';
pt(102).dtname     = 'real_T';



  
pt(103).blockname = 'timer/Unit Delay';
pt(103).paramname = 'InitialCondition';
pt(103).class     = 'scalar';
pt(103).nrows     = 1;
pt(103).ncols     = 1;
pt(103).subsource = 'SS_DOUBLE';
pt(103).ndims     = '2';
pt(103).size      = '[]';
pt(103).isStruct  = false;
pt(103).symbol     = 'bakup_P.UnitDelay_InitialCondition';
pt(103).baseaddr   = '&bakup_P.UnitDelay_InitialCondition';
pt(103).dtname     = 'real_T';



  
pt(104).blockname = 'stepper_down/Detect Rise Positive/Positive/Constant';
pt(104).paramname = 'Value';
pt(104).class     = 'scalar';
pt(104).nrows     = 1;
pt(104).ncols     = 1;
pt(104).subsource = 'SS_DOUBLE';
pt(104).ndims     = '2';
pt(104).size      = '[]';
pt(104).isStruct  = false;
pt(104).symbol     = 'bakup_P.Constant_Value_d';
pt(104).baseaddr   = '&bakup_P.Constant_Value_d';
pt(104).dtname     = 'real_T';



  
pt(105).blockname = 'stepper_out/Detect Rise Positive/Positive/Constant';
pt(105).paramname = 'Value';
pt(105).class     = 'scalar';
pt(105).nrows     = 1;
pt(105).ncols     = 1;
pt(105).subsource = 'SS_DOUBLE';
pt(105).ndims     = '2';
pt(105).size      = '[]';
pt(105).isStruct  = false;
pt(105).symbol     = 'bakup_P.Constant_Value_e';
pt(105).baseaddr   = '&bakup_P.Constant_Value_e';
pt(105).dtname     = 'real_T';



  
pt(106).blockname = 'timer/Detect Rise Positive/Positive/Constant';
pt(106).paramname = 'Value';
pt(106).class     = 'scalar';
pt(106).nrows     = 1;
pt(106).ncols     = 1;
pt(106).subsource = 'SS_DOUBLE';
pt(106).ndims     = '2';
pt(106).size      = '[]';
pt(106).isStruct  = false;
pt(106).symbol     = 'bakup_P.Constant_Value_o';
pt(106).baseaddr   = '&bakup_P.Constant_Value_o';
pt(106).dtname     = 'real_T';


function len = getlenPT
len = 106;

