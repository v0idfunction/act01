(

	var midi;
	var inMidiDevicesNames;
	var outMidiDevicesNames;
	var specs = IdentityDictionary.new;

	Tdef(\midisetup, { 1.do {

		//i=INSTRUMENT();

		i.midi=true;
		midi = i.controllerManager.midi;

		(thisProcess.nowExecutingPath.dirname ++ "/../../../midi/controllers/midimix/midimix.map.scd").load;


		specs[ b[\name].asSymbol ] = b;

		3.wait;

		inMidiDevicesNames = ["MIDI Mix","MPK Mini Mk II"];
		outMidiDevicesNames = ["MPK Mini Mk II"];

		midi.addDevices( inMidiDevicesNames, specs );


		1.wait;


		m=();

		(thisProcess.nowExecutingPath.dirname ++ "/../../../midi/controllers/midimix/midimix.namespace.scd").load;

		(thisProcess.nowExecutingPath.dirname ++ "/../../../midi/controllers/mpk_mk2/mpk_mk2.namespace.scd").load;

	}});

	Tdef(\midisetup).play;


)
