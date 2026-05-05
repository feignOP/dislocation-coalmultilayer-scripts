# CoAl Dislocation Structure Generator

A lightweight project to generate **CoAl (B2/CsCl) structures with dislocations** using Atomsk.  
Outputs are ready to use in LAMMPS for molecular dynamics simulations.

---

## 🚀 Features

- Single-crystal CoAl with random dislocation loops  
- Multilayer CoAl–Al structures with compositional variation  
- Cylindrical sample generation  
- LAMMPS-ready output files  

---

## 📂 Files

- `coal_random_dislcoation.sh` → Single-crystal CoAl with random dislocations  
- `coal_al_multilayer_dislcoation.sh` → Multilayer CoAl–Al system  

---

## ⚙️ Requirements

- Atomsk  
- LAMMPS  
- Bash (Linux/macOS)

---

## ▶️ Usage

### Single Crystal
```bash
bash coal_random_dislcoation.sh
```

### Multilayer
```bash
bash coal_al_multilayer_dislcoation.sh
```

---

## 📦 Output

- `.cfg` → Structure file  
- `.lmp` → LAMMPS-compatible file  

Multilayer script generates multiple structures based on composition (0–40%).

---

## 🧪 Workflow

1. Run script in Bash with ATOMSK installed 
2. Load `.lmp` file into LAMMPS  
3. Perform simulation  
4. Visualize in OVITO  

---

## 📝 License

This project is licensed under the MIT License.

You are free to:
- Use  
- Modify  
- Distribute  

With proper attribution.

---

## 👤 Author

Anand Mathew  
University of Houston
