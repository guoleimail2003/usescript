@echo on
adb wait-for-devices
adb shell setprop property.autologservice.debug true
adb shell getprop property.autologservice.debug

adb shell setprop persist.sys.logservice.ip 192.168.31.232

adb shell getprop persist.sys.logservice.ip

pause