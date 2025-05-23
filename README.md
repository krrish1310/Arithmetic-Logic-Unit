# 🔢 Digital Logic Design Project: 2-bit Arithmetic Logic Unit (ALU) in Proteus

## Overview

This project implements a 2-bit Arithmetic Logic Unit (ALU) using only **basic logic gates** (AND, OR, XOR, NOT) in Proteus Design Suite. It performs both logical and arithmetic operations based on a 3-bit control input, with outputs displayed on LEDs and optionally on a 7-segment display. It is designed entirely from scratch without any special-purpose ICs.

As a bonus, the design is extended to handle signed numbers, is ported to Verilog.
## ⚙️ Features

* Inputs:
  * Two 2-bit binary numbers `A[1:0]`, `B[1:0]`
  * `Carry In (Cin)` for arithmetic operations
  * `Control[2:0]`:

    * `Control[2] = 0`: Logical Mode

      * `00` = AND
      * `01` = OR
      * `10` = XOR
      * `11` = NOT (on A)
    * `Control[2] = 1`: Arithmetic Mode

      * `00` = ADD (A + B + Cin)
      * `01` = SUBTRACT (A - B) using 2’s complement
      * `10` = MULTIPLY
      * `11` = COMPARE (Output 2-bit code: A>B, A==B, A\<B)
* Outputs:

  * 4-bit output displayed via **LEDs**
  * Optional display on **7-segment display**
* Extras:

  * Signed number support using 2’s complement**
  * Fully simulated in Proteus
  * Redone in Verilog HDL
  * Hardware prototype with 74-series logic IC.

---

## 🔧 Implementation Details

### Logical Operations:

* Direct gate-level implementation of AND, OR, XOR
* NOT performed on A only, for both bits

### Arithmetic Operations:

* Addition: Built from half and full adders using only basic gates
* Subtraction: A + (\~B + 1) using 2’s complement
* Multiplication: Bit-level multiplication using AND gates and adders
* Comparison: 2-bit output based on result of A vs B:

  * `10` – A > B
  * `01` – A == B
  * `00` – A < B

### 7-Segment Display:

* Output encoded using combinational logic
* Negative sign displayed using dedicated segment logic

---

## 🧪 Testing & Simulation

* Simulated thoroughly in Proteus with toggle switches and LEDs
* Truth tables and edge cases manually verified
* Verilog version tested using waveform simulations (ModelSim)

---

##  Bonus Implementations

* Signed arithmetic support with 2’s complement
* Output on 7-segment display
* Verilog implementation
* Hardware implementation using logic ICs

---

## 📂 Project Files

* `Proteus_ALU.pdsprj` – Proteus simulation project
* `ALU.v` – Verilog HDL code
* `7Segment_Logic.v` – Logic diagram for display
* `ALU_testbench.v` – Verification truth tables
* `README.md` – Project documentation

---

## 📸 Snapshots

*(Insert screenshots here for Proteus schematic, waveform output, hardware setup if available)*

---

## 👨‍💻 Author

**\[Your Name]**
B.Tech Electrical Engineering
Indian Institute of Technology, Kharagpur

---

## 📄 License

Open for educational and academic use. Attribution appreciated.

---
