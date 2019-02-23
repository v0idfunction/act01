i[\loopGrt]=Looper(1);


i[\loopGrt].rec;

i[\loopGrt].start;




i[\loopGrt].rate(2,0);

i[\loopGrt].rate(1,-1);

i[\loopGrt].rate(1/2,2);

i[\loopGrt].rate(1/4,3);


i[\loopGrt].rate([1/4,3,\r,-1,-1/2,\r,2]);


i[\loopGrt].rm(\rate,0);

i[\loopGrt].rate=1/4;

i[\loopGrt].rate=1/8;
