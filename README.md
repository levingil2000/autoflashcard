# Gemini Flashcard Generator

This is a simple batch script that automates the generation of interactive HTML flashcards using the Gemini command-line interface (CLI).

---

## 🧠 What It Does

The script prompts the user to enter a topic, then uses Gemini AI to generate a fully self-contained HTML file with **10 flashcards** about that topic. Each flashcard includes a **click-to-reveal answer** feature powered by JavaScript and uses **inline CSS** for styling.

---

## 📦 Requirements

- [Gemini CLI](https://github.com/your-gemini-cli-url) installed and properly configured  
- A working internet connection (if Gemini CLI requires it)  
- Windows operating system (tested on Windows 10/11)  

---

## 🛠️ How to Use

1. Make sure `gemini` is installed and available in your system's PATH.
2. Double-click the batch file or run it from a command prompt (`cmd.exe`).
3. When prompted, enter a topic (e.g., `Photosynthesis`, `World War II`, `Basic Algebra`).
4. The script will generate a prompt and send it to Gemini via the CLI.
5. Gemini will respond with a complete HTML file.
6. Open the HTML file in a browser to interact with your flashcards.

---

## 🎨 Flashcard Design

Each flashcard follows this design:

- **Background**: Light gray (`#f0f0f0`)
- **Text**: Black (high contrast)
- **Structure**:
  - `<div>` with a border
    - `<h2>` for the question  
      `font-size: 48px; text-align: center; margin-bottom: 10px;`
    - `<p>` for the answer  
      `font-size: 36px; text-align: center; display: none;`
  - JavaScript toggles the answer's visibility when the question is clicked

---

## 🧾 Prompt Sent to Gemini

The batch file sends this exact prompt:
Generate a single, self-contained HTML file with ten flashcards on the topic of '%topic%'. For the styling, use inline CSS exclusively. Make the background a light gray (#f0f0f0) and the text black for high contrast. The main heading should be 'Flashcards: %topic%'. Each flashcard should be a div with a border. Inside each div, the question should be an h2 tag and the answer a p tag. Style the h2 tags with 'font-size: 48px; text-align: center; margin-bottom: 10px;'. Style the p tags with 'font-size: 36px; text-align: center; display: none;'. Include a simple JavaScript function that toggles the visibility of the answer paragraph when the question (the h2 element) is clicked. The entire output must be only the HTML code and nothing else.

## 🧪 Example Topics to Try

- "Nervous System"
- "Shakespeare's Plays"
- "Newton's Laws of Motion"
- "Basic Trigonometry"
- "The Cold War"

---

## ✅ Possible Improvements

- Auto-save the output to `flashcards.html` using redirection
- Allow the user to customize number of flashcards or font sizes
- Add support for dark mode or alternate themes

---

## 📄 License

MIT License — use, modify, and distribute freely.

---
