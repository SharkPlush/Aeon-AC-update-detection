DISCLAIMER: This isn't affilated with Aeon Desktop in anyway!! If you install this don't expect any help from the Aeon community!

NOTE: This is mostly untested, so if you are willing to test or better yet provide fixes / optimizations feel free to do so.

A wrapper script whatever thingy that allows the Aeon systemd service to see when your laptop starts charging and start updating rather than failing outright.

This doesn't use polling so the script isn't draining your battery in the backround. Instead it's event driven.

I hope to get this script or something similar into base Aeon one day so this script tries to account for all environment types. i.e. PCs, laptops, laptops with removed or removable batteries and if those batteries get put back in place or not.

Main features:
 
 - PC detection.
 - Good battery detection, if you remove the battery from your device the script will know. If you put the battery back into your device it'll know!
 - No polling.

 TODO:

 - Support devices with multiple batteries though I have no idea how they work.
   - In beta https://github.com/SharkPlush/Aeon-AC-update-detection/tree/Multi-Battery-Beta (read the desc on the beta page)

To install run `sudo ./installer.sh`

To uninstall run `sudo ./uninstaller.sh`
