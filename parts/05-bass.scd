
i=INSTRUMENT();
i.play;

i[\kick] = INSTRUMENT(\kickElectro);
i[\kick].seq("1");

i[\bass] = INSTRUMENT(\bassTrance1);
i[\bass2] = INSTRUMENT(\bassTrance2);
i[\basses]=[
\bass,
\bass2,
];

i[\basses].fx=\distortion;
i[\basses].fxSet(\gain,7);


i[\bass].octave=3;
i[\bass].clock=4;
i[\bass][0].note("0xxx 1xx  ").x(16);
i[\bass][1].note("0xx  2xx 3x  0").x(4);
i[\bass][2].note("12xx 0 2xx  7 3xx 0").x(8);



i[\bass2].octave=4;
i[\bass2].amp=0.25;
i[\bass2].clock=2;
i[\bass2][0].note("3 0xx").speed(2).x(3);
i[\bass2][1].note("3 0xx  ").speed(2).x(1);
i[\bass2][2].note("2 3 5xx ").speed(8).x(2);
