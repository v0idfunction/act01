i[\loopVoz1].rec;
i[\loopVoz1].rec;
i[\loopVoz1].start;
i[\loopVoz1].start;


i[\loopVoz1].amp=2;

i[\loopVoz1].rate(2,0);

i[\loopVoz1].rate(1,-1);

i[\loopVoz1].rate(1/2,2);

i[\loopVoz1].rate(1/4,3);

i[\loopVoz1].rate([1/4,3,\r,-1,-1/2,\r,2]);


i[\loopVoz1].rm(\rate,0);

i[\loopVoz1].rate=1/4;

i[\loopVoz1].rate=1/8;


i[\loopVoz1].fx=\moogFilter;
i[\loopVoz1].fxSet(\cutoff,1300);
i[\loopVoz1].fxSet(\cutoff,800);
i[\loopVoz1].fxSet(\cutoff,900);
i[\loopVoz1].fxSet(\cutoff,2900);

i[\loopVoz1].fx=\delay2;
i[\loopVoz1].fxSet(\delay,300);
i[\loopVoz1].fxSet(\delay,200);

i[\loopVoz1].stop;
