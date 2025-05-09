# CoAl Random Dislocation Generator

This script generates a cylindrical single-crystal CoAl structure and introduces **randomly placed dislocation loops** using [Atomsk](https://atomsk.univ-lille.fr/). It produces both `.cfg` and `.lmp` files compatible with LAMMPS.

## 📄 Script Name
`coal_random_dislcoation.sh`

## 🧱 Structure Description
- Crystal type: CsCl (CoAl)
- Lattice parameter: `a0 = 2.876 Å`
- Cylindrical single crystal geometry
- Orientation: `[001] [1-10] [110]`
- Dislocation loops with randomized positions and a mix of partial and full loops

## ▶️ How to Run

```bash
bash coal_random_dislcoation.sh
```

## 📦 Output
- `cylindrical_sample_coal.cfg`: Single-crystal structure with dislocations
- `cylindrical_sample_coal.lmp`: LAMMPS-ready atomic structure file

## 🛠 Requirements
- [Atomsk](https://atomsk.univ-lille.fr/)
- Bash shell environment (Linux/macOS)

## 📝 Notes
- You can modify the script to adjust the number, size, and type of dislocations.
- The output `.lmp` file can be directly read by LAMMPS.
