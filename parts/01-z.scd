~z.fadeTime=4;

~z={ (Saw.ar([60,63])*SinOsc.kr(~tempo.kr/[2,3],0,0.2,0.7)).tanh / 2 };

~z={ (Saw.ar([36,39])*SinOsc.kr(~tempo.kr/[2,3],0,0.2,0.7)).tanh / 1.5 };

~z={ (Saw.ar([36,39].midicps)*SinOsc.kr(~tempo.kr/[2,3],0,0.2,0.7)).tanh / 1.25 };

~z[1]={ (Saw.ar([60,63].midicps)*SinOsc.kr(~tempo.kr/[2,3],0,0.2,0.7)).tanh / 2 };

(
~z[4]=\filter->{|in|
	(in/2)+
	(
		RLPF.ar(in,[222,333,444],SinOsc.kr(~tempo.kr/8,0,0.3,0.304))
		* 3.3
	).tanh/4!2
};

)

(
~z[2]=\filter->{|in|
	in+
	(Saw.ar([60,63]/2)*SinOsc.kr(~tempo.kr/[2,3],0,0.8,1.7)).tanh/4
};
)

(
~z[3]=\filter->{|in|
	var o = SinOsc.kr(~tempo.kr/[2,3,1/2,1/3],0,0.8,1.7).tanh*[1,0.7,0.4,0.3];

	Mix.new(in
	+ (LFPulse.ar([60,63],0,o/2)*o)/3
)
!2
 };

)

// abrir archivo 02-beatcholo
