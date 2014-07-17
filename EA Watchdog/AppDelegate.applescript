--
--  AppDelegate.applescript
--  EA Watchdog
--
--  Created by Ben Schwarz on 17.07.14.
--  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	on applicationWillFinishLaunching_(aNotification)
		-- Add observer to listen for screensaver stop events
		current application's NSDistributedNotificationCenter's defaultCenter's addObserver:me selector:"screensaverStop:" |name|:"com.apple.screensaver.willstop" object:(missing value)
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
	on screensaverStop:aNotification
		tell application "Firefox"
			close every window saving no
			open location "https://www.facebook.com/MuthesiusKunsthochschule"
			activate
		end tell
	end screensaverStop
	
end script