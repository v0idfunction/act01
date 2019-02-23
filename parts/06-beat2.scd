
i[\kick]=INSTRUMENT(i.synths.electro.kick);
i[\hihat]=INSTRUMENT(i.synths.electro.hihat);
i[\clap]=INSTRUMENT(i.synths.electro.clap);
i[\snare]=INSTRUMENT(i.synths.electro.snare);


i[\kick].seq("1").speed(1);
i[\hihat].seq(" 1").speed(2);
i[\clap].seq(" 1").speed(1/2);
i[\snare].seq(" 1").speed(1/4);

i[\drums]=[
\kick,
\hihat,
\clap,
\snare
];

i[\drums].fx=\reverbLPF;

i[\drums].fxSet(\cutoff,333);
i[\drums].fxSet(\cutoff,666);
i[\drums].fxSet(\cutoff,999);
i[\drums].fxSet(\cutoff,1222);



i[\drums].seq(\fxSet,
	[

		(cutoff:333),
		(cutoff:666),
		(cutoff:999),
		(cutoff:1222),
	]
);


i[\drums].fxSet(\q,0.1);
i[\drums].fxSet(\q,0.02);
i[\drums].fxSet(\q,0.2);

i[\drums].clock=2;
