DISCLAIMER: This isn't affilated with Aeon Desktop in anyway! If you install this don't expect any help from the Aeon community!

NOTE: This is mostly untested, so if you are willing to test or better yet provide fixes / optimizations feel free to do so.

A wrapper for [transactional_update](https://github.com/openSUSE/transactional-update).

This script aims to solve this problem: https://github.com/AeonDesktop/Project/discussions/4

How the wrapper works:

 - Once the transactional-update.service gets triggered it will execute /usr/sbin/transactional-update, this wrapper replace that with /usr/local/ac-detect
 - The service gets triggered and executes the wrapper.
  - The wrapper check if the device you have is a mobile device or a PC.
  - If its a PC the wrapper will just update your PC.
  - If its a mobile device the wrapper check if its on AC power currently. If it is it will trigger an update.
  - If the mobile device is off AC power then it will wait for AC power in the background, once plugged in an update will be triggered. (No more failed systemd service if the device wasn't plugged in when it was triggered)

Main features:
 
 - PC detection.
 - No polling.
 - Dual battery laptop support!

 TODO:

 - The script cannot handle devices with multiple "line_power_" I don't know how to fix this would like some help please.

WARNING: Before installing please check:

```console
aeon@localhost:~> upower -e
```

If you have multiple "line_power_" outputs the script will probably not work. (If you can fix this please see TODO)

To install run:

```console
aeon@localhost:~> sudo ./installer.sh
```

To uninstall run:

```console
aeon@localhost:~> sudo ./uninstaller.sh
```

Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg
