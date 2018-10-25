#!/bin/bash

rm -rf output

lambda=1.2          #(default: 1.2) The dielectric screening parameter
hI0=-2.0            #(default: -2.0) The electron affinity of hydrogen
chargePrecision=3   #(default: 3) Number of digits to use for point charge
method="ewald"      #(default: "ewald", alternative: "nonperiodic") Method to compute the Coulombic interaction
mR=2                #(default: 2) Number of unit cells to consider in per. calc. ("real space")
mK=2                #(default: 2) Number of unit cells to consider in per. calc. ("frequency space")
eta=50              #(default: 50) Ewald splitting parameter

ionizationdata=../../data/ionizationdata.dat    #(default: ionizationdata.dat)
chargecenters=../../data/chargecenters.dat      #(default: chargecenters.dat)

 
../../eqeq HKUST1.cif $lambda $hI0 $chargePrecision $method $mR $mK $eta \
    $ionizationdata $chargecenters 2>&1 | tee EQeq.log

mkdir output 
mv *EQeq* output

