
i[\kick]=INSTRUMENT(i.synths.electro.kick);
i[\kick]=INSTRUMENT(i.synths.electro.kick);
i[\kick]=INSTRUMENT(i.synths.kicks.kickSyn1);
i[\kick].synthdef=i.synths.kicks.kickElectro;
i[\hihat]=INSTRUMENT(i.synths.electro.hihat);
i[\clap]=INSTRUMENT(i.synths.electro.clap);
i[\snare]=INSTRUMENT(i.synths.snareNeuro);

i[\d1]=[
	\kick,
	\hihat,
	\clap,
	\snare
];

i[\kick].seq("1").speed(2);

i[\kick][0].seq("1xx :0.5 1xx").speed(2);
i[\kick][1].seq("1").speed(2);
i[\kick][].seq("1").speed(1);
i[\hihat][0].seq(" 1").speed(2);
i[\hihat][1].seq(" 1").speed(4);
i[\hihat][2].seq(" 1").speed(1);
i[\hihat][3].seq("1xx :0.5 0.5xxx ").speed(8);
i[\clap][0].seq(" 1").speed(1/2);
i[\clap][1].seq(" 1").speed(1);
i[\snare][0].seq(" 1").speed(1/4);
i[\snare][1].seq(" 1 :0.125 1xxx ").speed(1/2);
i[\snare][2].seq("1xxxxxxxx").speed(4).maybe.x(1);





i[\d1].fx=\reverb;
i[\d1].fxSet(\wet,0);
i[\d1].fxSet(\wet,1);
i[\d1].fxSet(\wet,1/2);
i[\d1].fxSet(\room,0.01);
i[\d1].fxSet(\room,1);
i[\d1].fxSet(\damp,0.01);
i[\d1].fxSet(\damp,1);
i[\d1].clock=1/4;


i[\kick].clock=1;
i[\kick].clock=4;
i[\kick].clock=8;
i[\kick].clock=32;
i[\kick].clock=64;
i[\kick].clock=1;
i[\d1].clock=1;

i[\snare].clock=2**4;
i[\snare].clock=1/4;

i.every(8, {
	i[\d1].clock=[1/4,2,4,1,1/].choose;
});

// i.every(8, nil);


i[\d1].stop
i[\drums].stop
