@echo off
adb wait-for-devices
adb root
adb remount

adb shell rm -rvf /sdcard/mtklog
adb reboot

pause>nul