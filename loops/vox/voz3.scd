i[\loopVoz3].rec;
i[\loopVoz3].rec;
i[\loopVoz3].start;
i[\loopVoz3].start;


i[\loopVoz3].amp=2;

i[\loopVoz3].rate(2,0);

i[\loopVoz3].rate(1,-1);

i[\loopVoz3].rate(1/2,2);

i[\loopVoz3].rate(1/4,3);

i[\loopVoz3].rate([1/4,3,\r,-1,-1/2,\r,2]);


i[\loopVoz3].rm(\rate,0);

i[\loopVoz3].rate=1/4;

i[\loopVoz3].rate=1/8;


i[\loopVoz3].fx=\moogFilter;
i[\loopVoz3].fxSet(\cutoff,1300);
i[\loopVoz3].fxSet(\cutoff,800);
i[\loopVoz3].fxSet(\cutoff,900);
i[\loopVoz3].fxSet(\cutoff,2900);

i[\loopVoz3].fx=\delay2;
i[\loopVoz3].fxSet(\delay,300);
i[\loopVoz3].fxSet(\delay,200);

i[\loopVoz3].stop;
