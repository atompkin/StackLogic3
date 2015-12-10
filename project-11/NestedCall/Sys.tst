// Test file for NestedCall test.

load Sys.asm,
output-file Sys.out,
compare-to Sys.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1 RAM[2]%D1.6.1 RAM[5]%D1.6.1 RAM[6]%D1.6.1;

set RAM[0] 261,
set RAM[1] 261,
set RAM[2] 256,
set RAM[3] -1,
set RAM[4] -1,
set RAM[256] 1234, // fake RIP
set RAM[257] -1,
set RAM[258] -1,
set RAM[259] -1,
set RAM[260] -1,

repeat 1000 {
  ticktock;
}

output;
