# CoAl Dislocation Structure Generator

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20043797.svg)](https://doi.org/10.5281/zenodo.20043797)
[![Paper](https://img.shields.io/badge/Science_Advances-eaeb0766-blue)](https://www.science.org/doi/10.1126/sciadv.aeb0766)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

Scripts to generate **B2 CoAl structures with preexisting dislocations** using Atomsk, as used in the MD simulations of:

> Xu, K., **Mathew, A.**, Shang, Z., Paul, D., Sheng, X., Wang, H., Kulkarni, Y., & Zhang, X.  
> *Plasticity in brittle intermetallics enabled by framework of amorphous interfaces and preexisting dislocations.*  
> **Science Advances**, 12, eaeb0766 (2026).  
> DOI: [10.1126/sciadv.aeb0766](https://www.science.org/doi/10.1126/sciadv.aeb0766)

---

## Overview

CoAl (B2/CsCl structure) is one of the most brittle B2 aluminide intermetallics. These scripts reproduce the atomistic sample preparation workflow used to study how preexisting dislocations and amorphous interfaces (FAIs) synergistically enable room-temperature plasticity and work hardening in nanocrystalline CoAl. 

The generated structures were compressed in LAMMPS using the Purja Pun–Yamakov–Mishin Ni–Al–Co EAM potential and visualized with OVITO.

---

## Files

| Script | Description |
|--------|-------------|
| `coal_random_dislocation.sh` | Single-crystal B2 CoAl pillar with random dislocation loops |
| `coal_al_multilayer_dislocation.sh` | Multilayer CoAl–Al system with compositional variation and dislocations |

---

## Requirements

- [Atomsk](https://atomsk.univ-lille.fr/) — atomic structure manipulation
- [LAMMPS](https://www.lammps.org/) — MD simulation engine
- Bash (Linux/macOS)
- (Optional) [OVITO](https://www.ovito.org/) for visualization

---

## Usage

### Single crystal with dislocations
```bash
bash coal_random_dislocation.sh
```

### Multilayer CoAl–Al system
```bash
bash coal_al_multilayer_dislocation.sh
```

Multilayer script generates multiple structures across a range of Al compositions (0–40 at%).

---

## Output

| File | Format |
|------|--------|
| `*.cfg` | CFG structure file (Atomsk output) |
| `*.lmp` | LAMMPS-compatible data file |

---

## MD Simulation Details

All pillars were:
- Equilibrated at 300 K for 50 ps using conjugate gradient energy minimization
- Compressed at a constant strain rate of 2 × 10⁸ s⁻¹
- Simulated with the [Purja Pun et al. (2015)](https://doi.org/10.1088/0965-0393/23/6/065006) Ni–Al–Co EAM potential
- Visualized using common-neighbor analysis and DXA in OVITO

Dislocation loops were created using Atomsk and merged to match experimental GND densities (~4.28 × 10¹⁶ m⁻²) measured by ASTAR and DF-TEM.

---

## Workflow

```
Atomsk (structure generation)
        ↓
LAMMPS (compression simulation)
        ↓
OVITO (DXA, CNA, strain analysis)
```

---

## Citation

If you use these scripts, please cite the paper:

```bibtex
@article{xu2026plasticity,
  title   = {Plasticity in brittle intermetallics enabled by framework of amorphous interfaces and preexisting dislocations},
  author  = {Xu, Ke and Mathew, Anand and Shang, Zhongxia and Paul, Debargha and Sheng, Xuanyu and Wang, Haiyan and Kulkarni, Yashashree and Zhang, Xinghang},
  journal = {Science Advances},
  volume  = {12},
  pages   = {eaeb0766},
  year    = {2026},
  doi     = {10.1126/sciadv.aeb0766}
}
```

---

## License

MIT License. Free to use, modify, and distribute with attribution.

---

## Authors

**Anand Mathew** — University of Houston, Department of Mechanical and Aerospace Engineering  
**Ke Xu** — Purdue University, School of Materials Engineering  
**Yashashree Kulkarni** — University of Houston (PI)  
**Xinghang Zhang** — Purdue University (PI)
