DISCLAIMER: This isn't affilated with Aeon Desktop in anyway!! If you install this don't expect any help from the Aeon community!

This is mostly untested!

A wrapper script whatever thingy that allows the Aeon systemd service to see when your laptop starts charging and start updating rather than failing outright.

This doesn't use polling so the script isn't draining your battery in the backround. Instead it's event driven.

Main features:
 
 - This can be used on any device including PC as it has detections for battery and none battery devices, so this is universal.
 - No polling.
 - If you take your battery in and out the script will detect this and adjust accordingly.

To install run ./installer.sh with sudo.
