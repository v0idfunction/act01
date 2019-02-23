~mix = ~z

(
~z[3]=\filter->{|in,dist=2|
	var o = SinOsc.kr(~tempo.kr/[2,3,1/2,1/3],0,0.8,1.7).tanh*[1,0.7,0.4,0.3];

	(in*(o*dist)).tanh/2
!2
 };

)



~z.set(\dist, 2);

~z.set(\dist, 4);

~z.set(\dist, 12);

~z.set(\dist, 18);

~z.set(\dist, 22);

~z.set(\dist, 222);

~z.set(\dist, 2222);

~z.set(\dist, 22222);

~z.set(\amp, 0.5);


~z={0};
