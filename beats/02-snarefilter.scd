i[\d1].fx=nil;
i[\d1].fx=i.synths.fx.reverbLPF;

i[\hihat2]=i.synths.fx.reverbLPF;
i[\d1].fxSet(\wet,1/4);
i[\snare2].fxSet(\wet,0.6);
i[\hihat2].fxSet(\wet,0.9);
i[\d1].fxSet(\room,0.75);
i[\d1].fxSet(\damp,0.75);
i[\snare2].fxSet(\room,0.85);
i[\snare2].fxSet(\damp,0.85);


i[\d1].seq(\fxSet,[
	(cutoff: 92.midicps),
	(cutoff: 84.midicps),
	(cutoff: 70.midicps),
	(cutoff: 58.midicps),
	(cutoff: 55.midicps),
]);

i[\hihat2][0].seq(\fxSet,[
	(cutoff: 72.midicps),
	(cutoff: 94.midicps),
	(cutoff: 60.midicps),
	(cutoff: 98.midicps),
	(cutoff: 48.midicps),
	(cutoff: 55.midicps),
]).speed(8);
i[\hihat2][1].seq(\fxSet,[
	(cutoff: 62.midicps),
	(cutoff: 84.midicps),
	(cutoff: 70.midicps),
	(cutoff: 88.midicps),
	(cutoff: 58.midicps),
	(cutoff: 65.midicps),
]).speed(2);
