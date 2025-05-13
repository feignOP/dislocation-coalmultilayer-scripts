#!/bin/bash


# === Generate Dislocated CoAl Top Layer ===
atomsk --create CsCl 2.876 Co Al orient [001] [1-10] [110] top.cfg \
-dup 82 82 33 \
-orient [001] [1-10] [110] [100] [010] [001] \
-disloc loop 0.15*box 0.2*box 0.1*box Y 22 0 0 6.5 0.33 \
-orient [100] [010] [001] [110] [001] [1-10] \
-disloc loop 0.82*box 0.12*box 0.15*box X 65 0 0 4.8 0.33 \
-orient [110] [001] [1-10] [0-11] [011] [100] \
-disloc loop 0.3*box 0.85*box 0.1*box Z 55 0 0 3.7 0.33 \
-orient [0-11] [011] [100] [011] [100] [0-11] \
-disloc loop 0.18*box 0.75*box 0.95*box Y 28 0 0 5.2 0.33 \
-orient [011] [100] [0-11] [001] [1-10] [110] \
-disloc loop 0.45*box 0.38*box 0.33*box X 50 0 0 7.0 0.33 partial \
-orient [001] [1-10] [110] [010] [001] [100] \
-disloc loop 0.1*box 0.9*box 0.52*box Z 80 0 0 2.4 0.33 \
-orient [010] [001] [100] [100] [010] [001] \
-disloc loop 0.33*box 0.22*box 0.78*box Y 25 0 0 3.0 0.33 partial \
-orient [100] [010] [001] [1-10] [110] [001] \
-disloc loop 0.68*box 0.31*box 0.18*box X 12 0 0 5.9 0.33 \
-orient [1-10] [110] [001] [0-11] [011] [100] \
-disloc loop 0.82*box 0.47*box 0.59*box Z 33 0 0 6.8 0.33 \
-orient [0-11] [011] [100] [1-11] [121] [-101] \
-disloc loop 0.44*box 0.89*box 0.22*box Y 17 0 0 4.4 0.33 \
-orient [1-11] [121] [-101] [110] [001] [1-10] \
-disloc loop 0.77*box 0.73*box 0.75*box X 72 0 0 8.0 0.33 \
-orient [110] [001] [1-10] [100] [010] [001] \
-disloc loop 0.6*box 0.58*box 0.12*box Z 38 0 0 3.3 0.33 partial \
-orient [100] [010] [001] [011] [100] [0-11] \
-disloc loop 0.24*box 0.57*box 0.64*box X 85 0 0 5.1 0.33 \
-orient [011] [100] [0-11] [010] [001] [100] \
-disloc loop 0.57*box 0.18*box 0.82*box Y 46 0 0 7.4 0.33 partial \
-orient [010] [001] [100] [001] [1-10] [110] \
-disloc loop 0.35*box 0.63*box 0.25*box Z 21 0 0 4.6 0.33 \
-alignx

# === Generate Polycrystalline Al Layer (to substitute some atoms later) ===
atomsk --create fcc 4.05 Al orient [-1-12] [1-10] [111] al.cfg -dup 82 140 5

# Create rotated versions of top.cfg along Z axis
atomsk top.cfg -rotate com z 15 top_rot60.cfg
atomsk top.cfg -rotate com z 30 top_rot120.cfg

# Loop through substitution percentages
for perc in 0 10 20 25 30 40; do
    if [ $perc -eq 0 ]; then
        cp al.cfg al_subst_0.cfg
    else
        atomsk al.cfg -select random ${perc}% Al -substitute Al Co al_subst_${perc}.cfg
    fi

    # Merge: top, rotated 60°, and rotated 120° with al layers
    atomsk --merge z 5 top.cfg al_subst_${perc}.cfg top_rot120.cfg al_subst_${perc}.cfg top_rot60.cfg final_structure_${perc}.cfg

    # Cut into cylindrical sample
    atomsk final_structure_${perc}.cfg \
           -select out cylinder Z 0.5*box 0.5*box 117 \
           -remove-atom select \
           cylindrical_sample_${perc}.cfg

    # Export for LAMMPS
    atomsk cylindrical_sample_${perc}.cfg lammps
done

echo "All cylindrical samples generated with Co substitutions in Al layer."
