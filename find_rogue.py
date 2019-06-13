#!/usr/bin/python

# ==================== Python 2 =====================
# Tracks current window focus.
# Useful for finding commands, intercepting control.
# =================================================== 

import time

from AppKit import NSWorkspace


while True:
    time.sleep(3)
    activeAppName = NSWorkspace.sharedWorkspace().activeApplication()['NSApplicationName']
    print activeAppName

