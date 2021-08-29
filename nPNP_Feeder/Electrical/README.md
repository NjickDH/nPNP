# nPNP Feeder electrical

## Description
The schematic and board files for all PCB's for each feeder are placed here. Please read relevant notes for each of these boards below.

## Notes
- __MainFeeder:__
  - Schematic has MCU named as ATmega328-AU as this is the highest MCU in the pin compatible series. Actual MCU in the main feeder, and for which the firmware is written, is the ATmega48A. For more information about pin compatibility click [here](https://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48A-PA-88A-PA-168A-PA-328-P-DS-DS40002061B.pdf) .
- __USBFeeder:__
  - This PCB has to be connected to the main feeder PCB by soldering 4 wires from the 4 pads on the USBFeeder PCB to the 4 pads on the main feeder PCB.
- __ConnectorHolder:__
  - This PCB is to be inserted into the 40x40mm aluminium profile. Two holes on each end are used for mounting the PCB inside the slot. An alumium profile with the following dimensions must be used:
  <p align="center">
    <img src="https://user-images.githubusercontent.com/79939269/130835282-64b05ca9-d460-47db-b1bf-ae9916359bbf.png" width="200"/>
  </p>
  
### TODO:
- [x] Add BOM for each PCB
- [ ] Add price estimation for each PCB
- [ ] Validate MainFeederV1.0