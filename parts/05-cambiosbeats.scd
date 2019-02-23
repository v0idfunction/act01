(
	i[\drums].fx=nil;
	i[\ddmz].fx=nil;

	i[\drums].clock=2;
	i[\ddmz].clock=4;
	i[\ddmz].amp=3/4;

)

(

i[\drums].fx=nil;
i[\ddmz].fx=nil;

i[\drums].clock=2;
i[\ddmz].clock=1;

i[\drums].go(0);
i[\ddmz].go(0);

)


i[\drums].clock=4;




(

i[\drums].clock=1/4;
i[\ddmz].clock=1/3;


i[\drums].fx=\reverbLPF;
i[\ddmz].fx=\reverbLPF;
i[\drums].fxSet(\cutoff,1444);
i[\ddmz].fxSet(\cutoff,3999);
i[\drums].fxSet(\wet,0.9);
i[\ddmz].fxSet(\wet,0.9);
i[\drums].fxSet(\room,0.9);
i[\ddmz].fxSet(\room,0.9);
i[\drums].fxSet(\damp,0.9);
i[\ddmz].fxSet(\damp,0.9);

)


i[\khc].stop;
