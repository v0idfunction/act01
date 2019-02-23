/*
part 1
*/


/*

void function
void function
void function
void function
void function
void function
void function


Mexico City

*/



i[\kick] = INSTRUMENT(i.synths.kicks.choose);
i[\kick].seq("1");

i[\hihat] = INSTRUMENT(i.synths.hihats.choose);
i[\hihat].seq("1  1 1 ").speed(4);
i[\hihat].amp=3/4;

i.autoMIDI;
i[\drums] = [\kick,\hihat];

i[\drums].fx=\reverbLPF;
i[\drums].fxSet(\cutoff,444);
i[\drums].fxSet(\wet,0.9);
i[\drums].fxSet(\room,0.9);
i[\drums].fxSet(\damp,0.9);


i[\drums].clock=1/2;
i[\drums].amp=1;
