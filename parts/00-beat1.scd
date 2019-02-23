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

i[\drums] = [\kick,\hihat];
