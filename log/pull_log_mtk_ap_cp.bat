adb wait-for-devices
@echo off
adb root
adb remount

set CURRENT_DATE=%date%
set CURRENT_TIME=%time%
set YEAR=%date:~0,4%
set MONTH=%date:~5,2%
set DAY=%date:~8,2%

REM echo "YEAR = "%YEAR%
REM echo "MONTH = "%MONTH%
REM echo "DAY = "%DAY%

set HOUR=%time:~0,2%
set MINUTE=%time:~3,2%
set SECONDS=%time:~6,2%

REM echo HOUR=%HOUR%
REM echo MINUTE=%MINUTE%
REM echo SECONDS=%SECONDS%

set LOG_DIR_NAME=%YEAR%_%MONTH%_%DAY%_%HOUR%_%MINUTE%_%SECONDS%
set LOG_PATH=e:\log
set LOG_FULL_PATH=%LOG_PATH%\%LOG_DIR_NAME% 

if not exist %LOG_PATH% (
	echo %LOG_PATH%" not exsist and create the folder"
	mkdir %LOG_PATH%
	)

adb pull /sdcard/mtklog %LOG_FULL_PATH%

pause