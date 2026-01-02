# Linux Baseline - Bash

A minimal, dependency-free Linux baseline implemented in Bash.

This project provides a **portable and readable Linux baseline**
to standardize systems in environments where configuration management
tools (Ansible, Puppet, etc.) are not yet available or cannot be introduced.

It focuses on **clarity, consistency, and transmissibility** - using only Bash and standard Linux tools.

---

## Why this project exists

Not every infrastructure can start with Ansible.

In many real-world situations:
- systems are legacy or constrained
- no configuration management tool is in place
- introducing new tooling requires time or validation
- infrastructure is managed manually, step by step

Over time, this leads to:
- undocumented system state
- inconsistent configurations
- strong dependency on a single person
- difficult handovers

This project exists to **formalize a minimal Linux baseline**
that can be understood, reviewed, and applied
**anywhere Bash is available**.

---

## What you get here (Open Source)

This repository contains:

- ✔️ A Bash-based Linux baseline
- ✔️ Core system standardization logic
- ✔️ Time synchronization
- ✔️ Logging configuration
- ✔️ Package and update basics
- ✔️ Explicit, readable scripts

The goal is **not large-scale automation**, but **making the system state explicit and understandable**.

---

## When this approach makes sense

This Bash baseline is well-suited when:

- You need a **bootstrap baseline**
- You work on **legacy or minimal systems**
- You cannot yet introduce Ansible
- You want a **transparent, auditable implementation**
- You need zero external dependencies

---

## Execution and production usage

This repository intentionally focuses on the **baseline logic itself**.

In real production environments, safely applying a baseline usually requires:
- controlled execution order
- pre-flight checks
- post-deployment validation
- clear success and failure signals

Those operational aspects are intentionally **kept outside** this repository to keep the core logic readable and auditable.

A **production-oriented Bash version**, including:
- orchestrated execution
- validation and post-checks
- real-world rollout guidance

is available here: 👉 https://aloba.gumroad.com/l/linux-baseline-kit

This version is intended for teams who want to apply
the Bash baseline **safely and repeatably** in production environments.

---

## 🔁 Bash vs Ansible

This project is **not a replacement** for configuration management tools.

It is complementary.

- **Bash baseline**  
  → bootstrap, constrained environments, transparency

- **Ansible baseline**  
  → scalable, idempotent, long-term infrastructure management

If you are ready for a configuration management approach, see the Ansible version of this baseline:

👉 https://github.com/bernardbiokou/linux-baseline-ansible

---

## Usage

```bash
git clone https://github.com/bernardbiokou/linux-baseline-bash.git
cd linux-baseline-bash/scripts
sudo bash script_name.sh
```
Always review scripts before executing them.
This project favors explicit actions over abstraction.

## Project structure
```bash
linux-baseline-bash/
  scripts/         # Modular baseline components
  README.md
```
The structure is intentionally simple and easy to audit.

## FAQ
Is this production-ready by itself?
The baseline logic works.
Production usage usually requires execution control and validation steps that depend on your environment.

Why keep this repository minimal?
Because clarity matters.
This repository shows what the baseline does, without hiding it behind orchestration logic.

## License
MIT License - commercial use is allowed.
