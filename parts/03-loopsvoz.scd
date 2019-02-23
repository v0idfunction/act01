(

i[\drums].clock=1/4;
i[\ddmz].clock=1/3;


i[\drums].fx=\reverbLPF;
i[\ddmz].fx=\reverbLPF;
i[\drums].fxSet(\cutoff,444);
i[\ddmz].fxSet(\cutoff,999);
i[\drums].fxSet(\wet,0.9);
i[\ddmz].fxSet(\wet,0.9);
i[\drums].fxSet(\room,0.9);
i[\ddmz].fxSet(\room,0.9);
i[\drums].fxSet(\damp,0.9);
i[\ddmz].fxSet(\damp,0.9);
)



i[\loop1]=Looper(0);


i[\loop1].rec;
i[\loop1].start;
