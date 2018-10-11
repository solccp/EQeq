#!/bin/bash

rm -rf output

../../eqeq HKUST1.cif &> EQeq.log

mkdir output 
mv *EQeq* output

