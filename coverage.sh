#! /bin/bash

set -e

P=/usr/bin
$P/llvm-profdata merge -sparse *.profraw -o default.profdata
$P/llvm-cov show fuzz -instr-profile=default.profdata # -name=fuzz_me
