DISCLAIMER: This isn't affilated with Aeon Desktop in anyway!! If you install this don't expect any help from the Aeon community!

NOTE: This is mostly untested, so if you are willing to test or better yet provide fixes / optimizations feel free to do so.

A wrapper script whatever thingy that allows the Aeon systemd service to see when your laptop starts charging and start updating rather than failing outright.

This doesn't use polling so the script isn't draining your battery in the backround. Instead it's event driven.

I hope to get this script or something similar into base Aeon one day so this script tries to account for all environment types. i.e. PCs, laptops, laptops with removed or removable batteries and if those batteries get put back in place or not.

Main features:
 
 - PC detection.
 - Good battery detection, if you remove the battery from your device the script will know. If you put the battery back into your device it'll know!
 - No polling.
 - If you have a bad BIOS or battery (third party) then a built in fallback mode should take care of that.

 TODO:

 - Support devices with multiple batteries though I have no idea how they work. (In beta)
   - If someone can, please help me test dual battery devices as I don't have one! You can open new issues here or contact me directly on Discord: SharkPlushy Matrix: @blahajshark:matrix.org

What needs testing in the dual battery beta:

 - Does gdbus stop after the service ends?
 - What happens after the service starts and a battery gets unplugged?
 - Does fallback mode work?
 - What happens if the internal battery is empty and you put in a charged secondary battery (all this after the service starts)

To install run `sudo ./installer.sh`

To uninstall run `sudo ./uninstaller.sh`

As the sole copyright holder, I hereby permanently and irrevocably waive the requirements in Section 3(a)(1)(A)(i) (attribution/credit) and Section 3(a)(1)(B) (indication of modifications) of the CC BY-NC 4.0 license for this work. You are not required to credit me or list any changes, although both are appreciated. All other terms, including the NonCommercial restriction (no commercial use allowed), remain in full effect.

Shield: [![CC BY-NC 4.0][cc-by-nc-shield]][cc-by-nc]

This work is licensed under a
[Creative Commons Attribution-NonCommercial 4.0 International License][cc-by-nc].

[![CC BY-NC 4.0][cc-by-nc-image]][cc-by-nc]

[cc-by-nc]: https://creativecommons.org/licenses/by-nc/4.0/
[cc-by-nc-image]: https://licensebuttons.net/l/by-nc/4.0/88x31.png
[cc-by-nc-shield]: https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg
