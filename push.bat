@echo off
:: Prompt the user for the commit message
set /p msg="Enter your commit message: "

:: Check if the user entered an empty message
if "%msg%"=="" (
    echo Error: Commit message cannot be empty.
    pause
    exit /b
)

:: Stage all files, commit with the input message, and push
git add -A && git commit -m "%msg%" && git push

:: Keep the window open so you can see if the push succeeded
echo.
echo Process complete!
pause
