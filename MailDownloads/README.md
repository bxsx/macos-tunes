# Mail Downloads cleaner

Remove attachments that are being stored locally once you open/preview them via Mail.app.

The attachments are stored in mbox anyway so the ones from the "Mail Downloads" directory
are in use while you want to edit it etc.
_Once I want to edit I always save it manually anyway just to know the exact location._

This script can reduce a disk usage.

## Installation

The `plist` file is handled via `launchd` that is a standard for Apple systems (and it's already in macOS).

Copy the `plist` file into `~/Library/LaunchAgents` and reboot.

You can run it manually without rebooting too:

```
launchctl load ~/Library/LaunchAgents/com.bartskowron.apple.maildownloads.plist
launchctl start com.bartskowron.apple.maildownloads
```

## Execution

The _cleaner_ is being run every Sunday at 9 pm with low priority.
It's executed only if `Mail.app` is not running at the same time.

## Verification

`launchctl list | grep com.bartskowron.apple.maildownloads`

If no output - something is wrong.
