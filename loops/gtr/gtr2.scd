i[\loopGtr2].rec;
i[\loopGtr2].start;


i[\loopGtr2].amp=2;

i[\loopGtr2].rate(2,0);

i[\loopGtr2].rate(1,-1);

i[\loopGtr2].rate(1/2,2);

i[\loopGtr2].rate(1/4,3);

i[\loopGtr2].rate([1/4,3,\r,-1,-1/2,\r,2]);


i[\loopGtr2].rm(\rate,0);

i[\loopGtr2].rate=1/4;

i[\loopGtr2].rate=1/8;


i[\loopGtr2].fx=\moogFilter;
i[\loopGtr2].fxSet(\cutoff,1300);
i[\loopGtr2].fxSet(\cutoff,800);
i[\loopGtr2].fxSet(\cutoff,900);
i[\loopGtr2].fxSet(\cutoff,2900);

i[\loopGtr2].fx=\delay2;
i[\loopGtr2].fxSet(\delay,300);
i[\loopGtr2].fxSet(\delay,200);

i[\loopGtr2].stop;
