@echo off

if not exist "node_modules" (
  echo Installing dependencies...
  npm install
)

REM Expo 起動
echo Starting Expo server...
npx expo start

pause
