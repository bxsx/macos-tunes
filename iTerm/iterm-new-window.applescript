#!/usr/bin/env osascript

# Run: osascript scriptname.applescript

tell application "iTerm"
	if it is running then
		create window with default profile
	end if
	activate
end tell
