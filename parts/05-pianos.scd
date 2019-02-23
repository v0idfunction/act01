(
	i[\notes1]=INSTRUMENT(\distNote1);
	i[\notes1].note("0 2 3 5");
	i[\notes2]=INSTRUMENT(\distNote2);
	i[\notes2].note("0 2 3 5 7");
	i[\notes2].octave=5;


	i[\notes]=[\notes1,\notes2];
)

i[\notes].fx=\reverbLPF;

(

i[\notes1].octave=5;
i[\notes2].octave=6;
i[\notes].clock=24;

i[\notes][0].seq(\fxSet,[
	(cutoff:900, q:0.1),
	(cutoff:90, q:0.1),
	(cutoff:9000, q:0.1),
]);
i[\notes][1].seq(\fxSet,[
	(cutoff:1900, q:0.01),
	(cutoff:290, q:0.1),
	(cutoff:3900, q:0.03),
]).speed(4);

i[\notes][2].seq(\fxSet,[
	(cutoff:2900, q:0.2),
	(cutoff:1590, q:0.005),
	(cutoff:900, q:0.03),
]).speed(2);
)

i[\notes].clock=8;
i[\notes].clock=4;
i[\notes].clock=2;


i[\notes].clock=1/2;

i[\notes].fx=\reverb;
i[\notes].fxSet(\room,0.95);
i[\notes].fxSet(\damp,0.95);


(
	i[\notes].amp=1/3;
	i[\notes].fx=\reverbLPF;
	i[\notes1].octave=6;
	i[\notes2].octave=7;
	i[\notes1].clock=4;
	i[\notes2].clock=6;
i[\notes1][0].note("0 2 3 5");
i[\notes2][0].note("0 2 3 5 7");

i[\notes1][1].note("3 2 7 5").mirror.pyramid;
i[\notes2][1].note("0 3 2 3 10 5  :0.25 9 7 5 :0.5 1 :1 10 15").speed(2);

i[\notes1][2].note("0 1 4 :0.25 5 10").speed(16).x(6);
i[\notes2][2].note("0 1 3 :0.25  7 13").mirror;

i[\notes1][3].note("0 12xxx 3 15 1").mirror;
i[\notes2][3].note("0 12xxx 3 15 7");

)


i[\notes].rm(\fxSet,0);
i[\notes].rm(\fxSet,1);
i[\notes].rm(\fxSet,2);


(
	i[\notes1].octave=5;
	i[\notes2].octave=6;

i[\notes].clock=1/2;

i[\notes].fx=\reverb;
i[\notes].fxSet(\room,0.95);
i[\notes].fxSet(\damp,0.95);

)


(

	i[\notes].clock=2;
	i[\notes].fx=\reverb;
	i[\notes].fxSet(\room,0.5);
	i[\notes].fxSet(\damp,0.5);

)

(
i[\notes].clock=4;
i[\notes].amp=0.25;
i[\notes].fx=nil;
)


(

	i[\notes].fx=\reverb;
	i[\notes].amp=1.15;
	i[\notes].fxSet(\wet,1);
	i[\notes].fxSet(\room,1);
	i[\notes].fxSet(\damp,1);

)

i[\notes].stop
