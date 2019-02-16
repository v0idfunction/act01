/*
part 1
*/

i[\kick] = INSTRUMENT(i.synths.kicks.choose);
i[\kick].seq("1");

i[\hihat] = INSTRUMENT(i.synths.hihats.choose);
i[\hihat].seq(" 1").speed(4);

i[\drums] = [\kick,\hihat];
