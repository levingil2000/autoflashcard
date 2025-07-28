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

set "prompt=Generate a single, self-contained HTML file with ten flashcards on the topic of '%topic%'. For the styling, use inline CSS exclusively. Make the background a light gray (#f0f0f0) and the text black for high contrast. The main heading should be 'Flashcards: %topic%'. Each flashcard should be a div with a border. Inside each div, the question should be an h2 tag and the answer a p tag. Style the h2 tags with 'font-size: 48px; text-align: center; margin-bottom: 10px;'. Style the p tags with 'font-size: 36px; text-align: center; display: none;'. Include a simple JavaScript function that toggles the visibility of the answer paragraph when the question (the h2 element) is clicked. The entire output must be only the HTML code and nothing else."

gemini -p "%prompt%" -y 