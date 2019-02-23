

i=INSTRUMENT();
i.kill;
i=INSTRUMENT();

i.tempo = 92;

ProxySpace.clearAll;
p = ProxySpace.push(s);
p.makeTempoClock(TempoClock.default.tempo,'instrument',TempoClock.default);


p.quant = 4;

~out.quant=4;


~z.fadeTime = 5;

~z = {|amp=0.5| Silent.ar() ! 2  };

~amp = {1};
~mix = ~z;

~out = {
	Pan2.ar(Limiter.ar(CompanderD.ar(Mix.new(HPF.ar(
		~mix.ar
	,30)), 0.9, 1, 0.9, 0.045,0.3 )*~amp.kr),0);
};
~mix.fadeTime=8;


~out.play;


// (thisProcess.nowExecutingPath.dirname ++ "/midi/midi-setup.scd").load;

// i.synths = i.loadSynths(Platform.userExtensionDir++'/INSTRUMENT/SuperCollider/Classes/INSTRUMENT/Sounds/SynthDefs/*');
// load looper synths:
// i.loadSynths(Platform.userExtensionDir++'/INSTRUMENT/SuperCollider/Classes/INSTRUMENT/Looper/looper/*');

// furenku:
(thisProcess.nowExecutingPath.dirname ++ "/midi/midi-setup.scd").load;
i.synths = i.loadSynths(Platform.userExtensionDir++'/INSTRUMENT/INSTRUMENT/Sounds/SynthDefs/*');
// load looper synths:
i.loadSynths(Platform.userExtensionDir++'/INSTRUMENT/INSTRUMENT/Looper/looper/*');


i.play;
