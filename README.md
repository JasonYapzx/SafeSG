# SafeSG: Your Shield Against Scams

![SafeSG Logo](misc/SafeSG-Logo.png)

SafeSG is a community-driven platform designed to protect users, especially the elderly, from scammers and phishing attempts. Users can upload screenshots of suspicious calls and emails, and our app will analyze the data using advanced AI techniques such as Language Model Testing (LLM) and Optical Character Recognition (OCR) to identify potential scams. By leveraging community reports and AI-driven validation techniques, SafeSG helps keep users informed and safe, even those with limited technical literacy who are most vulnerable to financial scams such as phishing/smishing. You can read more about our [Business Case](misc/BusinessCase.pdf) here.

## Introduction

SafeSG is developed to combat the rising threat of scams and phishing attempts. With an intuitive interface and powerful backend, SafeSG allows users to quickly and easily report and verify suspicious activities, making it accessible and user-friendly for individuals of all technical backgrounds.

## Features

- **Screenshot Upload:** Users can upload screenshots of incoming calls and emails.
- **Text Extraction:** SafeSG employs advanced Text Extraction techniques, including Language Model Testing (LLM), to extract text from screenshots automatically.
- **Message Analysis:** Utilizing LLM, SafeSG analyzes the extracted text from screenshots to identify potential scam content and phishing attempts.
- **Phone Number Verification:** Extracts phone numbers from screenshots and checks against a database of known scam numbers.
- **Email Validation:** Extracts email addresses from screenshots and verifies their legitimacy by checking against official bank emails and known scam lists.
- **Community Reports:** A crowdsourced database where users can report and share their experiences with scams.
- **Real-Time Alerts:** Receive notifications about new scams reported in your area.
- **Educational Resources:** Access to tips and articles on how to recognize and avoid scams.

## Installation

### Tech Stack

- Frontend: Flutter
- Backend: npm (Node.js), Ollama

### Setting Up Flutter Frontend

### Step 1: Install Flutter

Follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) to install Flutter on your development machine. Ensure that you have Flutter properly installed and configured before proceeding to the next steps.

### Step 2: Clone the Repository

Clone the SafeSG repository from GitHub to your local machine using the following commands in your terminal:

```sh
git clone https://github.com/yourusername/SafeSG.git
cd SafeSG
```

Replace yourusername with your GitHub username.

### Step 3: Install Dependencies

Make sure flutter is installed beforehand. You can refer to [here](https://docs.flutter.dev/get-started/install/windows/desktop?tab=download).

Navigate to the frontend directory within the SafeSG repository and install the necessary dependencies by running the following command:

```sh
cd frontend
flutter pub get
```

This will install all the required packages for the Flutter frontend.

### Step 4: Run Flutter

Once the dependencies are installed, you can run the SafeSG application using the following command:

```sh
flutter run
```

For your convenience, you can test on web browser such as chrome.

```sh
flutter run -d chrome
```

### Step 5: Installing Ollama

We use Ollama for its simplicity and ability to run large language models (LLMs) even on non-GPU intensive machines. You can install Ollama by visiting [ollama.com](https://ollama.com/) and following the installation instructions for your operating system.

#### Selecting an LLM Model

After installing Ollama, you can select your preferred LLM model from the options available on the [Ollama GitHub repository](https://github.com/ollama/ollama). Choose a model that best fits your needs and download it to your local machine.

#### Initializing Ollama

To start using Ollama locally, run the command `ollama serve` in your terminal. This initializes and runs Ollama on your machine. Make sure to run this command whenever you need to interact with Ollama.

#### Creating a Custom Model

If you want to create a custom model, you can use the `ollama create` command. For example, to create a model named `sgsmodel`, you can run:

```
ollama create sgsmodel -f model/modelfile
```

Replace `model/modelfile` with the path to your model file.

### Step 6: Running Your Application

Ensure that Ollama is running locally before starting your application. You can start your application by running

```
npm start
```

This will start the backend and run your application, allowing it to interact with Ollama.

### Step 7: Ensure all 3 of your frontend, backend and LLM is running.

Make sure that all three components - frontend, backend, and Language Model (LLM) - are set up and running properly to ensure the app functions as intended. With everything in place, you'll never have to worry about getting scammed again. Have fun!

## Usage

### Home Screen & Info Page

Welcome to SafeSG! Protect yourself from scams by uploading screenshots of suspicious calls, texts, or emails. Tap "Check for Scam" to get started.

<p align="center">
  <img src="misc/SafeSG-home.jpeg" alt="Home Screen" height="600"/>
  <img src="misc/SafeSG-info.jpeg" alt="Info Page" height="600"/>
</p>

### Upload Screenshots

1. Tap on the "Check for Scam" button.
2. Select a screenshot of an incoming call or email.
3. The app will automatically extract phone numbers or email addresses and the message content.

<p align="center">
  <img src="misc/SafeSG-check.jpeg" alt="Upload Screenshots" height="600"/>
  <img src="misc/SafeSG-howto.jpeg" alt="Upload Screenshots" height="600"/>
</p>

### Verification

1. The extracted data is checked against our database of known scam numbers and emails.
2. Users receive immediate feedback on whether the number or email is likely to be a scam.

<p align="center">
  <img src="misc/SafeSG-safe.jpeg" alt="Verification" height="600"/>
  <img src="misc/SafeSG-scam.jpeg" alt="Verification" height="600"/>
</p>

## Coming Soon

### Reporting

1. If you identify a scam, report it to the community through the app.
2. Your report will help others stay informed and avoid similar scams.

### Alerts

Enable notifications to receive real-time alerts about new scams reported in your area.

### Educational Resources

Access a library of articles and tips on how to stay safe from scams.

## Our Team

Welcome to our team page! Meet the talented individuals driving our projects forward:

Low Ye Yang, Caleb [LinkedIn](https://www.linkedin.com/in/caaleb/) | [GitHub](https://github.com/ca-leb)

Gui Ling Ling [LinkedIn](https://www.linkedin.com/in/linglingg/) | [GitHub](https://github.com/ling-ui)

Yap Zher Xiang, Jason [LinkedIn](https://www.linkedin.com/in/ja-sony/) | [GitHub](https://github.com/JasonYapzx/)

Yeo Yu Jie [LinkedIn](https://www.linkedin.com/in/yeoyujie/) | [GitHub](https://github.com/yeoyujie)

Together, we form a dynamic team dedicated to pushing boundaries and delivering exceptional results. Connect with us to learn more about our projects and achievements.
