#!/usr/bin/env osascript

# Run: osascript scriptname.applescript

tell application "iTerm"
	if it is running then
		create window with default profile
	else
		activate
	end if
end tell