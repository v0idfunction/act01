i[\ninSnare].fx=nil;
i[\ninSnare].fx=i.synths.fx.reverbLPF;

i[\ninHihat]=i.synths.fx.reverbLPF;
i[\ninSnare].fxSet(\wet,1/4);
i[\ninSnare].fxSet(\wet,0.6);
i[\ninHihat].fxSet(\wet,0.9);
i[\ninSnare].fxSet(\room,0.75);
i[\ninSnare].fxSet(\damp,0.75);
i[\ninSnare].fxSet(\room,0.85);
i[\ninSnare].fxSet(\damp,0.85);


i[\ninSnare].seq(\fxSet,[
	(cutoff: 92.midicps),
	(cutoff: 84.midicps),
	(cutoff: 70.midicps),
	(cutoff: 58.midicps),
	(cutoff: 55.midicps),
]);

i[\ninHihat][0].seq(\fxSet,[
	(cutoff: 72.midicps),
	(cutoff: 94.midicps),
	(cutoff: 60.midicps),
	(cutoff: 98.midicps),
	(cutoff: 48.midicps),
	(cutoff: 55.midicps),
]).speed(8);
i[\ninHihat][1].seq(\fxSet,[
	(cutoff: 62.midicps),
	(cutoff: 84.midicps),
	(cutoff: 70.midicps),
	(cutoff: 88.midicps),
	(cutoff: 58.midicps),
	(cutoff: 65.midicps),
]).speed(2);
