#!/usr/bin/env bash

DECODED_STRING="En un lugar de La Mancha de cuyo nombre no quiero acordarme"
ENCODED_STRING=$(echo -n $DECODED_STRING | base64 -w0)

function run () {
  passed=0;
  failed=0;
  for test in $@; 
  do
    $test;
  done;
}

function TestOuputFile () {
  echo "Test Output file"
  echo -n $1 > test/expected;
  echo -n $2 |./tp0 -o test/actual;
  diff test/actual test/expected;
  rm test/expected test/actual
}

function TestInputFile() {
  echo "Test Input file"
  echo -n $2  > test/input;
  echo -n $1  > test/expected;
  ./tp0 -i test/input     > test/actual;
  diff test/actual test/expected;
}

function TestInputOutputFile() {
  echo "Test Input/Ouput file"
  echo -n $2 > test/input;
  echo -n $1 > test/expected;
  ./tp0 -i test/input  -o test/actual;
  diff test/actual test/expected;
  rm test/actual test/expected test/input
}

function TestAgainstBase64Encode () {
  echo "Test Against base 64 Encode"
  diff <(echo -n $1| base64 -w0) <(echo -n $1 | ./tp0);
}

function TestAgainstBase64Decode () {
  echo "Test Against base 64 Decode"
  diff -a  <(echo -n $1 | ./tp0 -d) <(echo -n $1| base64 -d -w0)
}

TestOuputFile "$ENCODED_STRING" "$DECODED_STRING"

TestInputFile "$ENCODED_STRING" "$DECODED_STRING"

TestInputOutputFile "$ENCODED_STRING" "$DECODED_STRING"

TestAgainstBase64Encode "Man is distinguished, not only by his reason, but by this singular passion from
other animals, which is a lust of the mind, that by a perseverance of delight
in the continued and indefatigable generation of knowledge, exceeds the short
vehemence of any carnal pleasure." 

TestAgainstBase64Decode "TWFuIGlzIGRpc3Rpbmd1aXNoZWQsIG5vdCBvbmx5IGJ5IGhpcyByZWFzb24sIGJ1dCBieSB0aGlzIHNpbmd1bGFyIHBhc3Npb24gZnJvbSBvdGhlciBhbmltYWxzLCB3aGljaCBpcyBhIGx1c3Qgb2YgdGhlIG1pbmQsIHRoYXQgYnkgYSBwZXJzZXZlcmFuY2Ugb2YgZGVsaWdodCBpbiB0aGUgY29udGludWVkIGFuZCBpbmRlZmF0aWdhYmxlIGdlbmVyYXRpb24gb2Yga25vd2xlZGdlLCBleGNlZWRzIHRoZSBzaG9ydCB2ZWhlbWVuY2Ugb2YgYW55IGNhcm5hbCBwbGVhc3VyZS4="
