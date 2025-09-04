# 🚀 Git-Kit: Streamline Your Daily Git Workflow

**Git-Kit** is a collection of powerful, interactive shell scripts designed to automate the most common (and often tedious) tasks in a developer's daily Git workflow. From syncing branches to creating perfectly formatted merge requests, Git-Kit makes you faster, more consistent, and less prone to error.

This toolkit was born from real-world development pain points and is built for maximum efficiency and team collaboration.

## ✨ Core Features

- **`git-sync`**: Interactively syncs your feature branch with the main branch (`develop` or `main`), including a robust, guided conflict resolution process.
- **`gitmr`**: Creates a Merge/Pull Request from your current branch to a chosen target. It automatically copies the task URL to your clipboard and opens the MR page in your browser.
- **`gitmr-release`**: A specialized, safety-focused tool for creating release MRs (e.g., `develop` -> `master`), with mandatory branch updates and guided CI status checks.

## 🆚 Before and After: The Git-Kit Advantage

| Dimension | Manual Workflow 🐢 | With Git-Kit 🚀 | Impact |
| :--- | :--- | :--- | :--- |
| **⏱️ Time** | 5-15 Minutes | **< 1 Minute** | **10x Faster** |
| **🔢 Steps** | 10+ Manual Steps | **3 Commands** | **Drastically Simplified** |
| **🧠 Mental Load** | High (Fear of mistakes) | **Low** (Guided & Safe) | **Stay in Flow** |
| **🛡️ Reliability** | Low (Prone to human error) | **High** (Standardized & Validated) | **Fewer Mistakes** |
| **🤝 Teamwork** | Inconsistent | **Standardized** | **Better Collaboration** |

## 🏁 Quick Start

### 1. Clone the Repository

Clone this repository to your local machine:
`git clone https://github.com/YOUR_USERNAME/git-kit.git`
`cd git-kit`

### 2. Run the Installer

Run the installer script. You may be asked for your password as it tries to copy the scripts to `/usr/local/bin`.
`sudo ./install.sh`

### 3. Configure for Your Project

Copy the configuration template to the root of **your own project's repository**:
`cp /path/to/git-kit/.git-kit-config.template /path/to/your-project/.git-kit-config`

Now, open `/path/to/your-project/.git-kit-config` and edit the values to match your project's setup (e.g., project IDs, branch names).

### 4. You're Ready!

Navigate to your project's directory and try the commands!
`# In your project's directory`
`git-sync`
`gitmr`

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
