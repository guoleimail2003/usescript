@echo on
adb wait-for-devices
adb shell setprop property.autologservice.debug false
adb shell getprop property.autologservice.debug
pause