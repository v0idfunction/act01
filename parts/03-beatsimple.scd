i[\k0]=INSTRUMENT(\kickElectroKit);
i[\h0]=INSTRUMENT(\hihatElectroKit);
i[\c0]=INSTRUMENT(\clapElectroKit);


i[\k0][0].seq("1");
i[\h0][0].seq(" 1");
i[\c0][0].seq("   1");

i[\k0][1].seq("1  1");
i[\h0][1].seq(" 1");
i[\c0][1].seq("1   1");

i[\k0][2].seq("1");
i[\h0][2].seq(" 1 :0.5 1xx ");
i[\c0][2].seq("  1 1");

i[\khc]=[
\k0,
\h0,
\c0,
]

i[\khc].clock=4;



i[\khc].go(7);
i[\khc].go(9);
i[\khc].go(0);
i[\khc].go(3);
i[\khc].go(5);

i.every(16,{
	i[\khc].go(32.rand);
});


i.every(4,{
	i[\h0].clock=[1,2,4,3,1/2,8].choose*4;
	i[\h0].go(0)
});

i.every(4,nil);

i[\h0].clock=4;
i[\khc].go(32.rand);
