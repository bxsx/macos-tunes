# Mail Downloads cleaner
Remove attachments that are being stored locally once you open/preview it via Mail.app.

The attachment are stored in mbox anyway so the ones from the "Mail Downloads" directory
are in use while you want to edit it etc.
Once I want to edit I always save it manually anyway just to know the exact location.

This script can reduce a disk usage.

## Installation

The `plist` file is handled via `launchd` that is a standard for Apple systems (and it's already in your system).
Copy the `plist` file into `~/Library/LaunchAgents` and reboot.

You can run it manually without rebooting too:
```
launchctl load ~/Library/LaunchAgents/com.bartskowron.apple.maildownloads.plist
launchctl start com.bartskowron.apple.maildownloads
```

## Execution

The cleaner is being run every Sunday at 9pm with low priority.
It's executed only if Mail.app is not running in the same time.

## Verification

`launchctl list | grep com.bartskowron.apple.maildownloads`

If no output - something is wrong.
