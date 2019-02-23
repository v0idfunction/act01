~z={0};

i[\drums].stop;
i[\ddmz].stop;

(
	i[\hcDrmz0]=INSTRUMENT(\kickHard);
	i[\hcDrmz1]=INSTRUMENT(\kickGabber);
	i[\hcDrmz2]=INSTRUMENT(\hihatClosed);



	i[\hcDrmz0].amp=3;
	i[\hcDrmz0].seq("1").speed(2/3);
	i[\hcDrmz1].seq("1").speed(1/2);
	i[\hcDrmz2].seq("1xx").speed(4);


	i[\hcDrmzz]=[
		\hcDrmz0,
		\hcDrmz1,
		\hcDrmz2,
	];

)

(

i[\hcDrmz0][0].seq("1 :0.5 1xx :0.25 1xxx ").speed(2/3);
i[\hcDrmz0][1].seq("1 :0.2 1xxxxx :0.5 0.5xx").speed(2/3);
i[\hcDrmz0][2].seq("1xxxx  ").speed(2/3);
i[\hcDrmz1][0].seq("1xxxxxxxx").speed(8).maybe;
i[\hcDrmz1][1].seq("1xxxxxxxx").speed(8).maybe;
i[\hcDrmz1][2].seq("1xxxxxxxx").speed(8).maybe;
i[\hcDrmz2][0].seq("1xx 0.5xx 1").speed(4);
i[\hcDrmz2][1].seq("1xx 1xx 1 :0.25 1xxx ").speed(8);
i[\hcDrmz2][2].seq("1xx").speed(3);

)

i[\hcDrmzz].clock=1;
i[\hcDrmzz].clock=2;
i[\hcDrmzz].clock=4;
i[\hcDrmzz].clock=8;
i[\hcDrmzz].clock=16;
i[\hcDrmzz].clock=32;
i[\hcDrmzz].amp=1/3;
i[\hcDrmzz].fx=\distortion;
i[\hcDrmzz].fxSet(\gain,1.3);
i[\hcDrmzz].fxSet(\gain,2.3);
i[\hcDrmzz].fxSet(\gain,3.3);
i[\hcDrmzz].fxSet(\gain,13.3);
i[\hcDrmzz].amp=1/4;
i[\hcDrmzz].fxSet(\gain,33);
i[\hcDrmzz].fxSet(\gain,333);
i[\hcDrmzz].amp=1/8


i[\hcDrmzz].fxSet(\gain,1.3);
i[\hcDrmzz].clock=4;
i[\hcDrmzz].amp=1;


i[\hcDrmz2][0].seq("1xx").speed(1);
i[\hcDrmz2][1].seq("1xx").speed(4).x(1);


i[\hcDrmzz].clock=8;



i[\hcDrmzz].clock=2;
