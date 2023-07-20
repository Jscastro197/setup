# Raspberry Pi Power Cycle and Stability Scripts

This repository contains scripts for performing clean and dirty power cycles on a Raspberry Pi and stability-related operations. These scripts are useful for testing and maintaining the stability of your Raspberry Pi.

## Clean Power Cycle

To perform a clean power cycle on the Raspberry Pi, follow these steps:

1. Connect to the Raspberry Pi via SSH:

```bash
ssh pi@172.16.8.83
```
2. Navigate to the "stability" directory:
```bash
cd stability
```
3. Execute the "startCleanCycle.sh" script:

```bash
./startCleanCycle.sh
```

## Dirty Power Cycle

To perform a dirty power cycle on the Raspberry Pi, follow these steps:

1. Connect to the Raspberry Pi via SSH:

```bash
ssh pi@172.16.8.83
```
2. Navigate to the "stability" directory:
```bash
cd stability
```
3. Execute the "startCleanCycle.sh" script:

```bash
./startDirtyCycle.sh
```
