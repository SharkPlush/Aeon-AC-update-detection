DISCLAIMER: This isn't affilated with Aeon Desktop in anyway! If you install this don't expect any help from the Aeon community!

NOTE: This is mostly untested, so if you are willing to test or better yet provide fixes / optimizations feel free to do so.

A wrapper for [transactional_update](https://github.com/openSUSE/transactional-update).

This script aims to solve this problem: https://github.com/AeonDesktop/Project/discussions/4

How the wrapper works:

 - Once the transactional-update.service gets triggered it will execute /usr/sbin/transactional-update, this wrapper replace that with /usr/local/ac-detect
 - The service gets triggered and executes the wrapper.
  1. The wrapper check if the device you have is a mobile device or a PC.
  2. If its a PC the wrapper will just update your PC.
  3. If its a mobile device the wrapper check if its on AC power currently. If it is it will trigger an update.
  4. If the mobile device is off AC power then it will wait for AC power in the background, once plugged in an update will be triggered.
  
  - Laptops with removed batteries will be treated as always plugged in and update without issues, if you do put a battery into the laptop the script will adapt to that and function as intended.
  
  - The wrapper technically doesn't need PC detection since it only checks for AC power and obviously if its able to check then the PC is plugged in, BUT I don't know how UPS batteries work and I think there is a chance that it can function like a laptop would where the battery is keeping the PC on without the AC status being true.
  
Main features:
 
 - PC detection.
 - No polling.
 - Multi-battery laptop support!

 TODO:

 - The script cannot handle devices with multiple "line_power_" I don't know how to fix this would like some help please.

WARNING: Before installing please check:

```console
aeon@localhost:~> upower -e
```

If you have multiple "line_power_" outputs the script will probably not work. If you can please beta test the beta branch for this [here](https://github.com/SharkPlush/Aeon-AC-update-detection/tree/Multi-Line-Power-Beta).

To install run:

```console
aeon@localhost:~> sudo ./installer.sh
```

To uninstall run:

```console
aeon@localhost:~> sudo ./uninstaller.sh
```

Shield: [![CC BY-NC 4.0][cc-by-nc-shield]][cc-by-nc]

This work is licensed under a
[Creative Commons Attribution-NonCommercial 4.0 International License][cc-by-nc].

[![CC BY-NC 4.0][cc-by-nc-image]][cc-by-nc]

[cc-by-nc]: https://creativecommons.org/licenses/by-nc/4.0/
[cc-by-nc-image]: https://licensebuttons.net/l/by-nc/4.0/88x31.png
[cc-by-nc-shield]: https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg
