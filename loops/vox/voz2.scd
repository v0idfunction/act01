i[\loopVoz2].rec;
i[\loopVoz2].rec;
i[\loopVoz2].start;
i[\loopVoz2].start;


i[\loopVoz2].amp=2;

i[\loopVoz2].rate(2,0);

i[\loopVoz2].rate(1,-1);

i[\loopVoz2].rate(1/2,2);

i[\loopVoz2].rate(1/4,3);

i[\loopVoz2].rate([1/4,3,\r,-1,-1/2,\r,2]);


i[\loopVoz2].rm(\rate,0);

i[\loopVoz2].rate=1/4;

i[\loopVoz2].rate=1/8;


i[\loopVoz2].fx=\moogFilter;
i[\loopVoz2].fxSet(\cutoff,1300);
i[\loopVoz2].fxSet(\cutoff,800);
i[\loopVoz2].fxSet(\cutoff,900);
i[\loopVoz2].fxSet(\cutoff,2900);

i[\loopVoz2].fx=\delay2;
i[\loopVoz2].fxSet(\delay,300);
i[\loopVoz2].fxSet(\delay,200);

i[\loopVoz2].stop;
