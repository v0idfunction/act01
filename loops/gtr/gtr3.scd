i[\loopGtr3].rec;
i[\loopGtr3].start;


i[\loopGtr3].amp=2;

i[\loopGtr3].rate(2,0);

i[\loopGtr3].rate(1,-1);

i[\loopGtr3].rate(1/2,2);

i[\loopGtr3].rate(1/4,3);

i[\loopGtr3].rate([1/4,3,\r,-1,-1/2,\r,2]);


i[\loopGtr3].rm(\rate,0);

i[\loopGtr3].rate=1/4;

i[\loopGtr3].rate=1/8;


i[\loopGtr3].fx=\moogFilter;
i[\loopGtr3].fxSet(\cutoff,1300);
i[\loopGtr3].fxSet(\cutoff,800);
i[\loopGtr3].fxSet(\cutoff,900);
i[\loopGtr3].fxSet(\cutoff,2900);

i[\loopGtr3].fx=\delay2;
i[\loopGtr3].fxSet(\delay,300);
i[\loopGtr3].fxSet(\delay,200);

i[\loopGtr3].stop;
