function bio=bakupbio
bio = [];
bio(1).blkName='MATLAB Function/p1';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&bakup_B.low';
bio(1).ndims=2;
bio(1).size=[];
bio(1).isStruct=false;
bio(getlenBIO) = bio(1);

bio(2).blkName='MATLAB Function/p2';
bio(2).sigName='';
bio(2).portIdx=1;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&bakup_B.high';
bio(2).ndims=2;
bio(2).size=[];
bio(2).isStruct=false;

bio(3).blkName='Switch';
bio(3).sigName='';
bio(3).portIdx=0;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&bakup_B.Switch';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='Derivative1';
bio(4).sigName='';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&bakup_B.Derivative1';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='Gain';
bio(5).sigName='';
bio(5).portIdx=0;
bio(5).dim=[3,1];
bio(5).sigWidth=3;
bio(5).sigAddress='&bakup_B.Gain[0]';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

bio(6).blkName='Kd';
bio(6).sigName='';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&bakup_B.Kd';
bio(6).ndims=2;
bio(6).size=[];
bio(6).isStruct=false;

bio(7).blkName='Ki';
bio(7).sigName='';
bio(7).portIdx=0;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&bakup_B.Ki';
bio(7).ndims=2;
bio(7).size=[];
bio(7).isStruct=false;

bio(8).blkName='Kp';
bio(8).sigName='';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&bakup_B.Kp';
bio(8).ndims=2;
bio(8).size=[];
bio(8).isStruct=false;

bio(9).blkName='gain';
bio(9).sigName='Setpoint';
bio(9).portIdx=0;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&bakup_B.Setpoint';
bio(9).ndims=2;
bio(9).size=[];
bio(9).isStruct=false;

bio(10).blkName='Integrator1';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&bakup_B.Integrator1';
bio(10).ndims=2;
bio(10).size=[];
bio(10).isStruct=false;

bio(11).blkName='Rate Limiter';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&bakup_B.RateLimiter';
bio(11).ndims=2;
bio(11).size=[];
bio(11).isStruct=false;

bio(12).blkName='Q4 DI ';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&bakup_B.Q4DI';
bio(12).ndims=2;
bio(12).size=[];
bio(12).isStruct=false;

bio(13).blkName='load_cell';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&bakup_B.load_cell';
bio(13).ndims=2;
bio(13).size=[];
bio(13).isStruct=false;

bio(14).blkName='Sum1';
bio(14).sigName='Error Signal';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&bakup_B.ErrorSignal';
bio(14).ndims=2;
bio(14).size=[];
bio(14).isStruct=false;

bio(15).blkName='Sum4';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&bakup_B.Sum4';
bio(15).ndims=2;
bio(15).size=[];
bio(15).isStruct=false;

bio(16).blkName='Real motor/angular_position =  [relative_count//COUNTS_PER_REV] *360 degrees';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&bakup_B.angular_positionrelative_countC';
bio(16).ndims=2;
bio(16).size=[];
bio(16).isStruct=false;

bio(17).blkName='Real motor/Saturation';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&bakup_B.Saturation';
bio(17).ndims=2;
bio(17).size=[];
bio(17).isStruct=false;

bio(18).blkName='Real motor/Channel 0 of  Encoder Inputs ';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&bakup_B.Channel0ofEncoderInputs';
bio(18).ndims=2;
bio(18).size=[];
bio(18).isStruct=false;

bio(19).blkName='Simulated motor/Back emf Ke1';
bio(19).sigName='';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&bakup_B.BackemfKe1';
bio(19).ndims=2;
bio(19).size=[];
bio(19).isStruct=false;

bio(20).blkName='Simulated motor/Damping b1';
bio(20).sigName='';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&bakup_B.Dampingb1';
bio(20).ndims=2;
bio(20).size=[];
bio(20).isStruct=false;

bio(21).blkName='Simulated motor/Gain Kt2';
bio(21).sigName='';
bio(21).portIdx=0;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&bakup_B.GainKt2';
bio(21).ndims=2;
bio(21).size=[];
bio(21).isStruct=false;

bio(22).blkName='Simulated motor/Gain Kt3';
bio(22).sigName='';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&bakup_B.GainKt3';
bio(22).ndims=2;
bio(22).size=[];
bio(22).isStruct=false;

bio(23).blkName='Simulated motor/Inductance';
bio(23).sigName='';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&bakup_B.Inductance';
bio(23).ndims=2;
bio(23).size=[];
bio(23).isStruct=false;

bio(24).blkName='Simulated motor/Resistance R1';
bio(24).sigName='';
bio(24).portIdx=0;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&bakup_B.ResistanceR1';
bio(24).ndims=2;
bio(24).size=[];
bio(24).isStruct=false;

bio(25).blkName='Simulated motor/Integrator1';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[1,1];
bio(25).sigWidth=1;
bio(25).sigAddress='&bakup_B.Integrator1_h';
bio(25).ndims=2;
bio(25).size=[];
bio(25).isStruct=false;

bio(26).blkName='Simulated motor/Integrator5';
bio(26).sigName='';
bio(26).portIdx=0;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&bakup_B.Integrator5';
bio(26).ndims=2;
bio(26).size=[];
bio(26).isStruct=false;

bio(27).blkName='Simulated motor/Integrator6';
bio(27).sigName='';
bio(27).portIdx=0;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&bakup_B.Integrator6';
bio(27).ndims=2;
bio(27).size=[];
bio(27).isStruct=false;

bio(28).blkName='Simulated motor/Sum1';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&bakup_B.Sum1';
bio(28).ndims=2;
bio(28).size=[];
bio(28).isStruct=false;

bio(29).blkName='Simulated motor/Sum2';
bio(29).sigName='';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&bakup_B.Sum2_e';
bio(29).ndims=2;
bio(29).size=[];
bio(29).isStruct=false;

bio(30).blkName='input side switching logic/complement the input';
bio(30).sigName='';
bio(30).portIdx=0;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&bakup_B.complementtheinput';
bio(30).ndims=2;
bio(30).size=[];
bio(30).isStruct=false;

bio(31).blkName='input side switching logic/Product';
bio(31).sigName='';
bio(31).portIdx=0;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&bakup_B.Product';
bio(31).ndims=2;
bio(31).size=[];
bio(31).isStruct=false;

bio(32).blkName='input side switching logic/Product1';
bio(32).sigName='';
bio(32).portIdx=0;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&bakup_B.Product1';
bio(32).ndims=2;
bio(32).size=[];
bio(32).isStruct=false;

bio(33).blkName='stepper_down/my_dir';
bio(33).sigName='';
bio(33).portIdx=0;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&bakup_B.my_dir_j';
bio(33).ndims=2;
bio(33).size=[];
bio(33).isStruct=false;

bio(34).blkName='stepper_down/step_pulse';
bio(34).sigName='';
bio(34).portIdx=0;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&bakup_B.step_pulse_h';
bio(34).ndims=2;
bio(34).size=[];
bio(34).isStruct=false;

bio(35).blkName='stepper_down/Product';
bio(35).sigName='';
bio(35).portIdx=0;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&bakup_B.Product_c';
bio(35).ndims=2;
bio(35).size=[];
bio(35).isStruct=false;

bio(36).blkName='stepper_down/Product1';
bio(36).sigName='';
bio(36).portIdx=0;
bio(36).dim=[1,1];
bio(36).sigWidth=1;
bio(36).sigAddress='&bakup_B.Product1_c';
bio(36).ndims=2;
bio(36).size=[];
bio(36).isStruct=false;

bio(37).blkName='stepper_down/Sum';
bio(37).sigName='';
bio(37).portIdx=0;
bio(37).dim=[1,1];
bio(37).sigWidth=1;
bio(37).sigAddress='&bakup_B.Sum_f';
bio(37).ndims=2;
bio(37).size=[];
bio(37).isStruct=false;

bio(38).blkName='stepper_down/switch';
bio(38).sigName='';
bio(38).portIdx=0;
bio(38).dim=[1,1];
bio(38).sigWidth=1;
bio(38).sigAddress='&bakup_B.switch_a';
bio(38).ndims=2;
bio(38).size=[];
bio(38).isStruct=false;

bio(39).blkName='stepper_down/Unit Delay';
bio(39).sigName='';
bio(39).portIdx=0;
bio(39).dim=[1,1];
bio(39).sigWidth=1;
bio(39).sigAddress='&bakup_B.UnitDelay_o';
bio(39).ndims=2;
bio(39).size=[];
bio(39).isStruct=false;

bio(40).blkName='stepper_out/my_dir';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&bakup_B.my_dir';
bio(40).ndims=2;
bio(40).size=[];
bio(40).isStruct=false;

bio(41).blkName='stepper_out/step_pulse';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&bakup_B.step_pulse';
bio(41).ndims=2;
bio(41).size=[];
bio(41).isStruct=false;

bio(42).blkName='stepper_out/Product';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&bakup_B.Product_h';
bio(42).ndims=2;
bio(42).size=[];
bio(42).isStruct=false;

bio(43).blkName='stepper_out/Product1';
bio(43).sigName='';
bio(43).portIdx=0;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&bakup_B.Product1_a';
bio(43).ndims=2;
bio(43).size=[];
bio(43).isStruct=false;

bio(44).blkName='stepper_out/Sum';
bio(44).sigName='';
bio(44).portIdx=0;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&bakup_B.Sum';
bio(44).ndims=2;
bio(44).size=[];
bio(44).isStruct=false;

bio(45).blkName='stepper_out/switch';
bio(45).sigName='';
bio(45).portIdx=0;
bio(45).dim=[1,1];
bio(45).sigWidth=1;
bio(45).sigAddress='&bakup_B.switch_m';
bio(45).ndims=2;
bio(45).size=[];
bio(45).isStruct=false;

bio(46).blkName='stepper_out/Unit Delay';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&bakup_B.UnitDelay_b';
bio(46).ndims=2;
bio(46).size=[];
bio(46).isStruct=false;

bio(47).blkName='sw_log/complement the input1';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,1];
bio(47).sigWidth=1;
bio(47).sigAddress='&bakup_B.complementtheinput1';
bio(47).ndims=2;
bio(47).size=[];
bio(47).isStruct=false;

bio(48).blkName='sw_log/Product2';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,1];
bio(48).sigWidth=1;
bio(48).sigAddress='&bakup_B.Product2';
bio(48).ndims=2;
bio(48).size=[];
bio(48).isStruct=false;

bio(49).blkName='sw_log/Product3';
bio(49).sigName='';
bio(49).portIdx=0;
bio(49).dim=[1,1];
bio(49).sigWidth=1;
bio(49).sigAddress='&bakup_B.Product3';
bio(49).ndims=2;
bio(49).size=[];
bio(49).isStruct=false;

bio(50).blkName='sw_log/Sum2';
bio(50).sigName='';
bio(50).portIdx=0;
bio(50).dim=[1,1];
bio(50).sigWidth=1;
bio(50).sigAddress='&bakup_B.Sum2';
bio(50).ndims=2;
bio(50).size=[];
bio(50).isStruct=false;

bio(51).blkName='timer/clock';
bio(51).sigName='';
bio(51).portIdx=0;
bio(51).dim=[1,1];
bio(51).sigWidth=1;
bio(51).sigAddress='&bakup_B.clock';
bio(51).ndims=2;
bio(51).size=[];
bio(51).isStruct=false;

bio(52).blkName='timer/Product';
bio(52).sigName='';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&bakup_B.Product_b';
bio(52).ndims=2;
bio(52).size=[];
bio(52).isStruct=false;

bio(53).blkName='timer/Relational Operator';
bio(53).sigName='';
bio(53).portIdx=0;
bio(53).dim=[1,1];
bio(53).sigWidth=1;
bio(53).sigAddress='&bakup_B.RelationalOperator';
bio(53).ndims=2;
bio(53).size=[];
bio(53).isStruct=false;

bio(54).blkName='timer/Sum of Elements';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[1,1];
bio(54).sigWidth=1;
bio(54).sigAddress='&bakup_B.SumofElements';
bio(54).ndims=2;
bio(54).size=[];
bio(54).isStruct=false;

bio(55).blkName='timer/Unit Delay';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[1,1];
bio(55).sigWidth=1;
bio(55).sigAddress='&bakup_B.UnitDelay';
bio(55).ndims=2;
bio(55).size=[];
bio(55).isStruct=false;

bio(56).blkName='stepper_down/Detect Rise Positive/FixPt Relational Operator';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&bakup_B.FixPtRelationalOperator_j';
bio(56).ndims=2;
bio(56).size=[];
bio(56).isStruct=false;

bio(57).blkName='stepper_down/Detect Rise Positive/Delay Input1';
bio(57).sigName='U(k-1)';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&bakup_B.Uk1_a';
bio(57).ndims=2;
bio(57).size=[];
bio(57).isStruct=false;

bio(58).blkName='stepper_out/Detect Rise Positive/FixPt Relational Operator';
bio(58).sigName='';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&bakup_B.FixPtRelationalOperator';
bio(58).ndims=2;
bio(58).size=[];
bio(58).isStruct=false;

bio(59).blkName='stepper_out/Detect Rise Positive/Delay Input1';
bio(59).sigName='U(k-1)';
bio(59).portIdx=0;
bio(59).dim=[1,1];
bio(59).sigWidth=1;
bio(59).sigAddress='&bakup_B.Uk1';
bio(59).ndims=2;
bio(59).size=[];
bio(59).isStruct=false;

bio(60).blkName='timer/Detect Rise Positive/FixPt Relational Operator';
bio(60).sigName='';
bio(60).portIdx=0;
bio(60).dim=[1,1];
bio(60).sigWidth=1;
bio(60).sigAddress='&bakup_B.FixPtRelationalOperator_e';
bio(60).ndims=2;
bio(60).size=[];
bio(60).isStruct=false;

bio(61).blkName='timer/Detect Rise Positive/Delay Input1';
bio(61).sigName='U(k-1)';
bio(61).portIdx=0;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&bakup_B.Uk1_a5';
bio(61).ndims=2;
bio(61).size=[];
bio(61).isStruct=false;

bio(62).blkName='stepper_down/Detect Rise Positive/Positive/Compare';
bio(62).sigName='';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&bakup_B.Compare_k';
bio(62).ndims=2;
bio(62).size=[];
bio(62).isStruct=false;

bio(63).blkName='stepper_out/Detect Rise Positive/Positive/Compare';
bio(63).sigName='';
bio(63).portIdx=0;
bio(63).dim=[1,1];
bio(63).sigWidth=1;
bio(63).sigAddress='&bakup_B.Compare';
bio(63).ndims=2;
bio(63).size=[];
bio(63).isStruct=false;

bio(64).blkName='timer/Detect Rise Positive/Positive/Compare';
bio(64).sigName='';
bio(64).portIdx=0;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&bakup_B.Compare_b';
bio(64).ndims=2;
bio(64).size=[];
bio(64).isStruct=false;

function len = getlenBIO
len = 64;

