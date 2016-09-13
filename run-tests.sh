#!/usr/bin/env bash


function run () {
  passed=0;
  failed=0;
  for test in $@; 
  do
    $test;
  done;
}

function TestPuntoPertenece () {
  echo "Test Punto que pertenece al Conjunto de Julia"
  ./bin/tp0 -c 0.01+0i -r 1x1 -o - > test/actual.pgm;
  DIFF=$(diff test/actual.pgm test/expected1.pgm); 
  if [ "$DIFF" != "" ]
  then
    echo "Test failed";
  else
    echo "Test passed";
  fi 
  rm test/actual.pgm
}

function TestPuntoNoPertenece() {
  echo "Test Punto que No Pertenece al Conjunto de Julia"
  ./bin/tp0 -c 10+0i -r 1x1 -o - > test/actual.pgm;
  DIFF=$(diff test/actual.pgm test/expected2.pgm); 
  if [ "$DIFF" != "" ]
  then
    echo "Test failed";
  else
    echo "Test passed";
  fi
  rm test/actual.pgm 
}

function TestImagenImposible() {
  echo "Test Imagen Imposible"
  echo -n $2 > test/input;
  echo -n $1 > test/expected;
  ./tp0 -i test/input  -o test/actual;
  diff test/actual test/expected;
  rm test/actual test/expected test/input
}

function TestArchivoSalidaImposible () {
  echo "Test Archivo Salida Imposible"
  diff <(echo -n $1| base64 -w0) <(echo -n $1 | ./tp0);
}

function TestCoordenadasImposibles() {
  echo "Test Coordenadas Imposibles"
  diff -a  <(echo -n $1 | ./tp0 -d) <(echo -n $1| base64 -d -w0)
}

function TestArgumentosVacios() {
  echo "Test Argumentos Vacios"
  diff -a  <(echo -n $1 | ./tp0 -d) <(echo -n $1| base64 -d -w0)
}

TestPuntoPertenece
TestPuntoNoPertenece

