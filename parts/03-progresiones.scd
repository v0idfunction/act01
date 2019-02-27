~z={|notes=#[36,39,43,46]| (Saw.ar(notes.midicps)*SinOsc.kr(~tempo.kr/[2,3],0,0.2,0.7)).tanh / 1.25 };

~z[1]={|notes=#[60,63,67,70]| (Saw.ar(notes.midicps)*SinOsc.kr(~tempo.kr/[2,3],0,0.2,0.7)).tanh / 2 };


i[\z]=INSTRUMENT(~z);


i.z[0].chord([
	C(0,\m),
	C(1,\M,1),
	C(3,\M,0),
	C(2,\dim,0),
]).speed(1/4).x(2)

i.z[1].chord([
	C(0,\m),
	C(7,\m,1),
	C(5,\sus4,0),
	C(1,\M,2,[16]),
]).speed(1/2).x(16)
