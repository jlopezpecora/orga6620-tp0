#!/usr/bin/env bash


function TestPuntoPertenece () {
  echo "Test Punto que pertenece al Conjunto de Julia"
  ./bin/tp0 -c 0.01+0i -r 1x1 -o - > test/actual.pgm;
  DIFF=$(diff test/actual.pgm test/expected1.pgm); 
  if [ "$DIFF" != "" ]
  then
    echo "Test failed: $DIFF";
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
    echo "Test failed: $DIFF";
  else
    echo "Test passed";
  fi
  rm test/actual.pgm 
}

function TestImagenImposible() {
  echo "Test Imagen Imposible"
  ./bin/tp0 -c 0+0i -r 0x1 -o - > test/tmp;
  DIFF=$(diff test/tmp test/expected3); 
  if [ "$DIFF" != "" ]
  then
    echo "Test failed: $DIFF";
  else
    echo "Test passed";
  fi
  rm test/tmp 
}

function TestArchivoSalidaImposible () {
  echo "Test Archivo Salida Imposible"
  ./bin/tp0 -o /tmp 2> test/tmp;
  DIFF=$(diff test/tmp test/expected4); 
  if [ "$DIFF" != "" ]
  then
    echo "Test failed: $DIFF";
  else
    echo "Test passed";
  fi
  rm test/tmp 
}

function TestCoordenadasImposibles() {
  echo "Test Coordenadas Imposibles"
  ./bin/tp0 -c 1+3 -o - > test/tmp;
  DIFF=$(diff test/tmp test/expected5); 
  if [ "$DIFF" != "" ]
  then
    echo "Test failed: $DIFF";
  else
    echo "Test passed";
  fi
  rm test/tmp 
}

function TestArgumentosVacios() {
  echo "Test Argumentos Vacios"
  ./bin/tp0 -c "" -o - > test/tmp;
  DIFF=$(diff test/tmp test/expected6); 
  if [ "$DIFF" != "" ]
  then
    echo "Test failed: $DIFF";
  else
    echo "Test passed";
  fi
  rm test/tmp 
}

TestPuntoPertenece
TestPuntoNoPertenece
TestImagenImposible
TestArchivoSalidaImposible
TestCoordenadasImposibles
TestArgumentosVacios
