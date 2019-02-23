(

i[\hcDrmzz].stop;

i[\ninKick]=INSTRUMENT(i.synths.kicks.kickElectro);
i[\ninKick].synthdef=i.synths.kicks.kickElectro;
i[\ninHihat]=INSTRUMENT(i.synths.electro.hihat);
i[\ninClap]=INSTRUMENT(i.synths.electro.clap);
i[\ninSnare]=INSTRUMENT(i.synths.snareNeuro);

i[\ninDrums]=[
	\ninKick,
	\ninHihat,
	\ninClap,
	\ninSnare
];

i[\ninKick].seq("1").speed(2);

i[\ninKick][0].seq("1xx :0.5 1xx").speed(2);
i[\ninKick][1].seq("1").speed(2);
i[\ninKick][2].seq("1").speed(1);
i[\ninHihat][0].seq(" 1").speed(2);
i[\ninHihat][1].seq(" 1").speed(4);
i[\ninHihat][2].seq(" 1").speed(1);
i[\ninHihat][3].seq("1xx :0.5 0.5xxx ").speed(8);
i[\ninClap][0].seq(" 1").speed(1/2);
i[\ninClap][1].seq(" 1").speed(1);
i[\ninSnare][0].seq(" 1").speed(1/4);
i[\ninSnare][1].seq(" 1 :0.125 1xxx ").speed(1/2);
i[\ninSnare][2].seq("1xxxxxxxx").speed(4).maybe.x(1);

)


(
i[\ninDrums].fx=\reverb;
i[\ninDrums].fxSet(\wet,0);
i[\ninDrums].fxSet(\wet,1);
i[\ninDrums].fxSet(\wet,1/2);
i[\ninDrums].fxSet(\room,0.01);
i[\ninDrums].fxSet(\room,1);
i[\ninDrums].fxSet(\damp,0.01);
i[\ninDrums].fxSet(\damp,1);
i[\ninDrums].clock=1/4;

)

i[\ninKick].fx=nil;
i[\ninKick].clock=4;
i[\ninKick].clock=8;
i[\ninKick].clock=1;

i[\ninDrums].fxSet(\wet,0);


i[\ninDrums].clock=1;
i[\ninDrums].clock=2;

i[\ninSnare].clock=2**4;
i[\ninSnare].clock=1/4;

i.every(8, {
	i[\ninDrums].clock=[1/4,2,4,1,1/2].choose;
});

// i.every(8, nil);


i[\ninDrums].stop
