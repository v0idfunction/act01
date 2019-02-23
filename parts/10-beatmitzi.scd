
i[\dis] = INSTRUMENT(\distRing);

i[\dis][0].note("3 5 7").speed(2);
i[\dis][1].note("3 5 7 11").speed(2);
i[\dis][2].note("3 5 7").speed(4).mirror;
i[\dis][3].note("7 11 15").speed(2);
i[\dis][4].note("7 11 15 17").speed(16);

i[\kick0] = INSTRUMENT(i.synths.electro.kick);
i[\kick0][0].seq("1").speed(2).x(8);
i[\kick0][1].seq("1").speed(4).x(6);
i[\kick0][2].seq("1").speed(8);
i[\kick0][0].amp=5/8;


i[\kick] = INSTRUMENT(\kickHard);
i[\kick][0].seq("1").speed(2);
i[\kick][1].seq("1xxx :0.25 1xxx ").speed(4);
i[\kick][2].seq("1  1xx :0.25 1xxx ").speed(4);
i[\kick][3].seq("1xx  1xx :0.75 1xx :0.25 1xxx ").speed(4);

i[\kick].clock=2;
i[\kick].clock=4;
i[\kick].clock=8;

i[\kick].fx=\distortion;
i[\kick].fx=\reverbLPF;
i[\kick].fxSet(\gain,0.3);
i[\kick].fxSet(\gain,1.5);
i[\kick].stop;


i[\kick].clock=1/4;
i[\kick].clock=1/2;
i[\kick].clock=1;
i[\kick].clock=2;
i[\kick].clock=4;
i[\kick].clock=8;

i[\kick].stop;


(
i[\dis].stop;
i[\kick].play;
)

i[\kick].clock=4;
i[\kick].clock=8;
i[\kick].clock=12;

i[\kick].clock=2;

i[\hihat]=INSTRUMENT(i.synths.electro.hihat);
i[\hihat2]=INSTRUMENT(i.synths.hihats.hihatClosed);

i[\kick].go(0);
i[\hihat].go(0);
i[\hihat2].go(0);

i[\hihat].clock=4;
i[\hihat].amp=3/4;

i[\hihat2][0].seq(" 1").speed(4).x(16);
i[\hihat2][1].seq(" 1  1xx  1 :0.25 1xxx ").speed(16);

i[\hihat][0].seq("1");
i[\hihat][1].seq("1xx :0.25 1 ").speed(2);
i[\hihat][1].seq("1xx :0.5 1xxx ").speed(2);
i[\hihat][2].seq("1 0.5 0.8xxx ").do(8).speed(4);
i[\hihat][3].seq("1 :0.5 0.7xx");
