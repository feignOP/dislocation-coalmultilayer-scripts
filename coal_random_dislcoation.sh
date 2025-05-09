#!/bin/bash

# === Set lattice constant for CsCl CoAl ===
a0=2.876  # Lattice parameter in Å

# === Generate Single-Crystal CoAl with Dislocation Loops ===
# Create the base crystal structure, duplicated to create a large block
# Dislcoations either partial or complete loopps are added across the sample
atomsk --create CsCl $a0 Co Al orient [001] [1-10] [110] top.cfg \
-dup 82 82 115 \
-orient [001] [1-10] [110] [100] [010] [001] \
-disloc loop 0.15*box 0.2*box 0.1*box Y 42 0 0 6.5 0.33 \
-orient [100] [010] [001] [110] [001] [1-10] \
-disloc loop 0.82*box 0.12*box 0.15*box X 65 0 0 4.8 0.33 \
-orient [110] [001] [1-10] [0-11] [011] [100] \
-disloc loop 0.3*box 0.85*box 0.1*box Z 55 0 0 3.7 0.33 \
-orient [0-11] [011] [100] [011] [100] [0-11] \
-disloc loop 0.18*box 0.75*box 0.95*box Y 50 0 0 5.2 0.33 \
-orient [011] [100] [0-11] [001] [1-10] [110] \
-disloc loop 0.45*box 0.38*box 0.33*box X 80 0 0 7.0 0.33 partial \
-orient [001] [1-10] [110] [010] [001] [100] \
-disloc loop 0.1*box 0.9*box 0.52*box Z 80 0 0 2.4 0.33 \
-orient [010] [001] [100] [100] [010] [001] \
-disloc loop 0.33*box 0.22*box 0.78*box Y 45 0 0 3.0 0.33 partial \
-orient [100] [010] [001] [1-10] [110] [001] \
-disloc loop 0.68*box 0.31*box 0.18*box X 20 0 0 5.9 0.33 \
-orient [1-10] [110] [001] [0-11] [011] [100] \
-disloc loop 0.82*box 0.47*box 0.59*box Z 60 0 0 6.8 0.33 \
-orient [0-11] [011] [100] [1-11] [121] [-101] \
-disloc loop 0.44*box 0.89*box 0.22*box Y 35 0 0 4.4 0.33 \
-orient [1-11] [121] [-101] [110] [001] [1-10] \
-disloc loop 0.77*box 0.73*box 0.75*box X 90 0 0 8.0 0.33 \
-orient [110] [001] [1-10] [100] [010] [001] \
-disloc loop 0.6*box 0.58*box 0.12*box Z 38 0 0 3.3 0.33 partial \
-orient [100] [010] [001] [011] [100] [0-11] \
-disloc loop 0.24*box 0.57*box 0.64*box X 85 0 0 5.1 0.33 \
-orient [011] [100] [0-11] [010] [001] [100] \
-disloc loop 0.57*box 0.18*box 0.82*box Y 60 0 0 7.4 0.33 partial \
-orient [010] [001] [100] [001] [1-10] [110] \
-disloc loop 0.35*box 0.63*box 0.25*box Z 30 0 0 4.6 0.33 \
-orient [011] [100] [0-11] [100] [010] [001] \
-disloc loop 0.12*box 0.34*box 0.41*box Y 40 0 0 4.1 0.33 partial \
-orient [1-10] [110] [001] [010] [001] [100] \
-disloc loop 0.77*box 0.44*box 0.63*box X 42 0 0 3.2 0.33 \
-orient [011] [100] [0-11] [100] [010] [001] \
-disloc loop 0.51*box 0.15*box 0.92*box Z 68 0 0 4.5 0.33 \
-orient [0-11] [011] [100] [001] [1-10] [110] \
-disloc loop 0.29*box 0.88*box 0.13*box Y 35 0 0 5.5 0.33 partial \
-orient [010] [001] [100] [1-11] [121] [-101] \
-disloc loop 0.62*box 0.74*box 0.48*box X 45 0 0 6.2 0.33 \
-orient [100] [010] [001] [0-11] [011] [100] \
-disloc loop 0.49*box 0.39*box 0.67*box Z 22 0 0 3.8 0.33 \
-orient [011] [100] [0-11] [110] [001] [1-10] \
-disloc loop 0.84*box 0.29*box 0.83*box Y 73 0 0 7.9 0.33 partial \
-orient [001] [1-10] [110] [100] [010] [001] \
-disloc loop 0.09*box 0.66*box 0.58*box X 66 0 0 3.9 0.33 \
-orient [1-11] [121] [-101] [011] [100] [0-11] \
-disloc loop 0.13*box 0.25*box 0.77*box Z 48 0 0 4.6 0.33 partial \
-orient [100] [010] [001] [0-11] [011] [100] \
-disloc loop 0.42*box 0.37*box 0.29*box Y 50 0 0 5.1 0.33 \
-orient [110] [001] [1-10] [100] [010] [001] \
-disloc loop 0.79*box 0.14*box 0.62*box X 55 0 0 3.5 0.33 partial \
-orient [010] [001] [100] [011] [100] [0-11] \
-disloc loop 0.26*box 0.58*box 0.45*box Z 61 0 0 6.7 0.33 \
-orient [011] [100] [0-11] [110] [001] [1-10] \
-disloc loop 0.67*box 0.81*box 0.22*box Y 34 0 0 4.2 0.33 partial \
-orient [001] [1-10] [110] [100] [010] [001] \
-disloc loop 0.61*box 0.13*box 0.24*box X 72 0 0 4.1 0.33 \
-orient [010] [001] [100] [011] [100] [0-11] \
-disloc loop 0.17*box 0.86*box 0.57*box Y 59 0 0 6.0 0.33 \
-orient [110] [001] [1-10] [100] [010] [001] \
-disloc loop 0.46*box 0.65*box 0.32*box Z 74 0 0 5.3 0.33 \
-orient [011] [100] [0-11] [110] [001] [1-10] \
-disloc loop 0.29*box 0.49*box 0.88*box X 69 0 0 4.7 0.33 \
-orient [1-11] [121] [-101] [011] [100] [0-11] \
-disloc loop 0.58*box 0.22*box 0.76*box Y 63 0 0 5.9 0.33 \
-orient [100] [010] [001] [0-11] [011] [100] \
-alignx 

# === Crop to Cylindrical Shape ===
atomsk top.cfg \
       -select out cylinder Z 0.5*box 0.5*box 117 \
       -remove-atom select \
       cylindrical_sample_coal.cfg

# === Export to LAMMPS Format ===
atomsk cylindrical_sample_coal.cfg lammps

echo "Single-crystal CoAl cylindrical sample with enlarged dislocation loops generated and exported."
