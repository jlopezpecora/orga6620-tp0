#!/usr/bin/env bash

EXPECTED1="P2\n1 1\n255\n255"

function run () {
  passed=0;
  failed=0;
  for test in $@; 
  do
    $test;
  done;
}

function TestPuntoPertenece () {
  echo "Test Punto que pertenece al Conjunto de Julia\n"
  ./bin/tp0 -c 0.01+0i -r 1x1 -o - > test/actual;
  DIFF=$(diff test/actual test/expected1); 
  if [ "$DIFF" != "" ]
  then
    echo "Test failed";
  else
    echo "Test passed";
  fi 
  rm test/actual
}

function TestPuntoNoPertenece() {
  echo "Test Punto que No Pertenece al Conjunto de Julia"
  echo -n $2  > test/input;
  echo -n $1  > test/expected;
  ./tp0 -i test/input     > test/actual;
  diff test/actual test/expected;
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

TestPuntoPertenece "$EXPECTED1"


