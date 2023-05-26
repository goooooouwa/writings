---
published: true
title: Retro gaming device setup
category: computer
tags: retro-gaming retroarch lakka
---

## My needs for a retro gaming device:

- supports both Handheld & TV modes
- support multiple controllers for multiplay
- can run games up to DS / N64 / PS1 smoothly

## Overrall best solutions

| Solution                       | Handheld modes | TV modes | Multiplay | Performance | Overall Experience                                 |
| ------------------------------ | -------------- | -------- | --------- | ----------- | -------------------------------------------------- |
| Retroarch for Switch           | [x]            | [x]      | [x]       | good        | good enough performance, ideal form factor         |
| Lakka for RPi with LCD Display | [x]            | [x]      | [x]       | ok          | best retro feel                                    |
| Android phone                  | [x]            | [ ]      | [x]       | better      | good performance, handheld & TV experience lacking |
| Lakka live usb drive           | [ ]            | [x]      | [x]       | best        | runs on any PC                                     |

### Solution 1: Retroarch for Switch

Pros:

- best overrall gaming experience
- the ideal form factor of a retro gaming device

Cons

- FAT32 doesn't support Chinese characters (no thumbnails for Chinese titles)

### Solution 2: Lakka for RPi with LCD display

Pros

- Clean UI
- boot fast

Cons

- not so portable
- ~~doesn't support GPIO DSI LCD~~ (fixed by changing video driver to fkms, see this [issue](https://github.com/libretro/Lakka-LibreELEC/issues/1375))

### Solution 3: Android phone + bluetooth controller

Pros

- run games really smoothly
- very easy to setup

Cons

- handheld experience isn't great (heavy controller, small screen height)
- doesn't have a smooth TV mode experience

### Solution 4: bootable live usb drive with shared roms/playlists/savefiles

Difficulities:

- Android apps (including Retroarch) don't have permissions to access external storage
- playlists not portable

Pros:

- run on any PC/laptop

## Explored solutions

### Solution 1: Lakka for Switch

Pros

- best Retroarch & Switch experience

Cons

- need to boot RCM to play games

### Solution 2: RetroPie for RPi with LCD display

Pros:

- supports both LCD & HDMI
- play basic games

Cons

- Added complexity with EmulationStation and custom Retroarch setup

### Solution 3: Raspberry Pi OS + Retroarch for RPi

Pros:

- supports both LCD & HDMI
- play basic games

Cons:

- need to build Retroarch by yourself
