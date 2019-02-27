i[\loopGtr1].rec;
i[\loopGtr1].start;


i[\loopGtr1].amp=2;

i[\loopGtr1].rate(2,0);

i[\loopGtr1].rate(1,-1);

i[\loopGtr1].rate(1/2,2);

i[\loopGtr1].rate(1/4,3);

i[\loopGtr1].rate([1/4,3,\r,-1,-1/2,\r,2]);


i[\loopGtr1].rm(\rate,0);

i[\loopGtr1].rate=1/4;

i[\loopGtr1].rate=1/8;


i[\loopGtr1].fx=\moogFilter;
i[\loopGtr1].fxSet(\cutoff,1300);
i[\loopGtr1].fxSet(\cutoff,800);
i[\loopGtr1].fxSet(\cutoff,900);
i[\loopGtr1].fxSet(\cutoff,2900);

i[\loopGtr1].fx=\delay2;
i[\loopGtr1].fxSet(\delay,300);
i[\loopGtr1].fxSet(\delay,200);

i[\loopGtr1].stop;
