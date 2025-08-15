@echo off

echo developブランチから最新のコードを取得します...

git checkout develop
if errorlevel 1 (
    echo ❌ developブランチへの移動に失敗しました
    echo   developブランチが存在しない可能性があります
    pause
    exit /b 1
)

git pull origin develop
if errorlevel 1 (
    echo ❌ developブランチから最新のコードを取得に失敗しました
    pause
    exit /b 1
) else (
    echo ✅ developブランチから最新のコードを取得しました
)

pause
