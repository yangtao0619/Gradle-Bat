@echo off
set /p time=please enter copy times：
echo 次数：every file will be copied %time%s,if you execute this bat first time,it will use more time.
call gradlew -Ptime=%time% copyAllFiles >nul 2>nul
pause