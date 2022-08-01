#!/usr/bin/env osascript

# Run: osascript scriptname.applescript URL

on run argv
	set success to false
	
	set targetURL to item 1 of argv
	if targetURL does not start with "http" then
		set targetURL to "https://" & targetURL
	end if
	
	tell application "Google Chrome"
		if it is running then
			activate
		else
			activate
			# give a chance to load windows from the previous session
			delay 0.05
		end if
		
		
		# try to find the tab already open
		repeat with currentWindow in windows
			set tabIndex to 0
			repeat with currentTab in (tabs of currentWindow)
				# check if targetURL is open, if it is focus that tab
				set tabIndex to tabIndex + 1
				if URL of tab tabIndex of currentWindow starts with targetURL then
					set (active tab index of currentWindow) to tabIndex
					set index of currentWindow to 1
					set success to true
					exit repeat
				end if
			end repeat
		end repeat
		
		# URL is not yet open
		if not success then open location targetURL
	end tell
end run
