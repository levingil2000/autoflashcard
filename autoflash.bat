@echo off

title Gemini Flashcard Generator

cls

echo.
echo ======================================================
echo ==              Flashcard Generator                 ==
echo ======================================================
echo.

set /p topic="Please enter the topic for your flashcards: "

if "%topic%"=="" (
    echo.
    echo You did not enter a topic. The script will now exit.
    echo.
    pause
    exit /b
)

echo.
echo Thank you. Generating HTML flashcards for the topic: "%topic%"
echo This may take a moment...
echo.

set "prompt=Generate a single, self-contained HTML file with ten flashcards on the topic of '%topic%'. For the styling, use modern styling with inline CSS exclusively. Use a neutral palette. Make sure that it's suitable for projection highlighting one question at a time and a clear navigation to access the other questions." 

gemini -p "%prompt%" -y 