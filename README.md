# E/A Watchdog

A simple Cocoa-flavoured AppleScript implementation of a watchdog for
resetting the browser to a single website when the screensaver stops.

To make this work with Firefox there are certain prerequisites:

*   Disable "warn on closing multiple tabs" (Settings)
*   Allow `window.close()`: Set property `dom.allow_scripts_to_close_windows` to `true` in [about:config](about:config))
*   Install Greasemonkey script to block all "onbeforeunload" listeners websites might have in place: [exitblock.user.js](http://javascript.about.com/library/exitblock.user.js) (via [Block Exit Blockers User Script](http://javascript.about.com/library/blexitblock.htm))

It is only this configuration which allows an outside script to close all
browser windows without nagging.

If you are curious, the magic happens in [AppDelegate.applescript](EA%20Watchdog/AppDelegate.applescript).
