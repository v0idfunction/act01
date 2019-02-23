i[\loop2]=Looper(1);


i[\loop2].rec;

i[\loop2].start;




i[\loop2].rate(2,0);

i[\loop2].rate(1,-1);

i[\loop2].rate(1/2,2);

i[\loop2].rate(1/4,3);


i[\loop2].rate([1/4,3,\r,-1,-1/2,\r,2]);


i[\loop2].rm(\rate,0);

i[\loop2].rate=1/4;

i[\loop2].rate=1/8;
