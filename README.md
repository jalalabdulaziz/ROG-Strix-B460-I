# ASUS ROG Strix B460-i

![](screenshot.png)

## Hardware

- **Motherboard:** Asus ROG Strix B460-I
  * Ethernet: Intel® i219-V 1Gb Ethernet
  * Audio Codec: Realtek ALCS1220A (Layout 7)
  * Wireless: Intel® Wi-Fi 6 AX200
  
- **CPU:** Intel Core i7 10700
- **dGPU:** Sapphire RX 570 ITX 8GB
- **RAM:** Corsair Vengeance LPX 32GB 2x16GB DDR4 2666Mhz
- **Storage:** Adata XPG SX8200 PRO 512GB M.2 NVMe
- **WiFi & Bluetooth:** BCM94360CS2 + NGFF M.2 Adapter

## Software

- **OS:** MacOS Catalina 10.15.5 (Updated to 10.15.6)
- **Bootloader:** OpenCore 0.5.9

## BIOS Settings

**Disabled:**
- Fast Boot
- VT-d
- CSM
- Intel SGX
- CFG Lock (no option in BIOS, Asus B460 motherboards are factory unlocked. The AppleCpuPmCfgLock and AppleXcpmCfgLock quirks are not necessary)

**Enabled:**
- VT-x
- Above 4G decoding
- Hyper-Threading
- Execute Disable Bit
- EHCI/XHCI Hand-off
- OS type: Windows 8.1/10 UEFI Mode
- DVMT Pre-Allocated (iGPU Memory): 64MB

## What's working

- [x] Intel UHD630 (iGPU)
- [x] Sapphire RX 570 ITX (dGPU)
- [x] Restart/Shutdown
- [x] Sleep/Wake
- [x] Power Management (Native support)
- [x] WiFi & Bluetooth (BCM94360CS2)
- [ ] USB

## Guides & Links

- [OpenCore Vanilla Desktop Guide](https://dortania.github.io/OpenCore-Install-Guide/)

## Known Issues

- Internal WiFi & Bluetooth are not supported.

## To Dos

- [ ] Proper USB Mapping