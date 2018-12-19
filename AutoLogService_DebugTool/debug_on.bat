@echo on
adb wait-for-devices
adb shell setprop property.autologservice.debug true
adb shell getprop property.autologservice.debug
pause