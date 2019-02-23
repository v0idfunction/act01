i[\vox1]=INSTRUMENT(\audioInput,autostart:true);

(

i[\vox1].fx=\reverb;
i[\vox1].autostart;
i[\vox1].fxSet(\wet,0.9);
i[\vox1].fxSet(\room,0.9);
i[\vox1].fxSet(\damp,0.9);

)

i[\vox1].autostart;
i[\vox1].stop;

i[\vox1].fx=nil;
i[\vox1].fx="gateDistort.overdrive";
i[\vox1].fx="gateDistort.hardcore";
i[\vox1].fx="gateDistort.extreme";
i[\vox1].fx="gateDistort.crunch";



i[\vox1].fx=\shineDestroy;
i[\vox1].amp=1/2
i[\vox1].fxSet(\gain,8)
i[\vox1].fxSet(\delay,1/8)
i[\vox1].fxSet(\delay,1/4)
i[\vox1].fxSet(\delay,2/3)
i[\vox1].fxSet(\cutoff,1230)
i[\vox1].fxSet(\cutoff,5230)
i[\vox1].fxSet(\cutoff,530)
i[\vox1].fxSet(\gain,3)
