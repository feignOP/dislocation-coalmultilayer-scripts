# CoAl Multilayer Dislocation Generator

This script creates a **merged multilayer cylindrical CoAl structure** that introduces dislocation loops to simulate interface behavior. The output includes `.cfg` and `.lmp` files for use in LAMMPS.

## 📄 Script Name
`coal_al_multilayer_dislcoation.sh`

## 🧱 Structure Description
- Crystal type: CsCl (CoAl)
- Lattice parameter: `a0 = 2.876 Å`
- Crystal type: fcc (Al)
- Lattice parameter: `a0 = 4.05 Å`
- Orientation: `[001] [1-10] [110]`
- Merged layers with varying concentration/density of Co atoms (controlled by `${perc}`)
- Dislocation loops introduced across layers

## ▶️ How to Run

```bash
bash coal_al_multilayer_dislcoation.sh
```

## 📦 Output
- `cylindrical_sample_${perc}.cfg`: Merged dislocated structure
- `cylindrical_sample_${perc}.lmp`: LAMMPS-ready atomic file

> `${perc}` refers to a value inside the script (percent of Co content in Al interfaced layers).

## 🛠 Requirements
- [Atomsk](https://atomsk.univ-lille.fr/)
- Bash shell environment (Linux/macOS)

## 📝 Notes
- Useful for simulations involving interfaces or compositionally graded regions.
- The `.lmp` file can be directly used in LAMMPS input scripts.
