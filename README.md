# 🚀 Git-Kit: Streamline Your Daily Git Workflow

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Shell Script](https://img.shields.io/badge/Language-Shell%20Script-blue.svg)](./scripts)
[![Compatibility](https://img.shields.io/badge/Compatibility-macOS%20%7C%20Linux%20%7C%20Windows%20(Git%20Bash)-brightgreen.svg)]()
[![DeepWiki](https://img.shields.io/badge/DeepWiki-git--kit-blue?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAyCAYAAAAnWDnqAAAAAXNSR0IArs4c6QAAA05JREFUaEPtmUtyEzEQhtWTQyQLHNak2AB7ZnyXZMEjXMGeK/AIi+QuHrMnbChYY7MIh8g01fJoopFb0uhhEqqcbWTp06/uv1saEDv4O3n3dV60RfP947Mm9/SQc0ICFQgzfc4CYZoTPAswgSJCCUJUnAAoRHOAUOcATwbmVLWdGoH//PB8mnKqScAhsD0kYP3j/Yt5LPQe2KvcXmGvRHcDnpxfL2zOYJ1mFwrryWTz0advv1Ut4CJgf5uhDuDj5eUcAUoahrdY/56ebRWeraTjMt/00Sh3UDtjgHtQNHwcRGOC98BJEAEymycmYcWwOprTgcB6VZ5JK5TAJ+fXGLBm3FDAmn6oPPjR4rKCAoJCal2eAiQp2x0vxTPB3ALO2CRkwmDy5WohzBDwSEFKRwPbknEggCPB/imwrycgxX2NzoMCHhPkDwqYMr9tRcP5qNrMZHkVnOjRMWwLCcr8ohBVb1OMjxLwGCvjTikrsBOiA6fNyCrm8V1rP93iVPpwaE+gO0SsWmPiXB+jikdf6SizrT5qKasx5j8ABbHpFTx+vFXp9EnYQmLx02h1QTTrl6eDqxLnGjporxl3NL3agEvXdT0WmEost648sQOYAeJS9Q7bfUVoMGnjo4AZdUMQku50McCcMWcBPvr0SzbTAFDfvJqwLzgxwATnCgnp4wDl6Aa+Ax283gghmj+vj7feE2KBBRMW3FzOpLOADl0Isb5587h/U4gGvkt5v60Z1VLG8BhYjbzRwyQZemwAd6cCR5/XFWLYZRIMpX39AR0tjaGGiGzLVyhse5C9RKC6ai42ppWPKiBagOvaYk8lO7DajerabOZP46Lby5wKjw1HCRx7p9sVMOWGzb/vA1hwiWc6jm3MvQDTogQkiqIhJV0nBQBTU+3okKCFDy9WwferkHjtxib7t3xIUQtHxnIwtx4mpg26/HfwVNVDb4oI9RHmx5WGelRVlrtiw43zboCLaxv46AZeB3IlTkwouebTr1y2NjSpHz68WNFjHvupy3q8TFn3Hos2IAk4Ju5dCo8B3wP7VPr/FGaKiG+T+v+TQqIrOqMTL1VdWV1DdmcbO8KXBz6esmYWYKPwDL5b5FA1a0hwapHiom0r/cKaoqr+27/XcrS5UwSMbQAAAABJRU5ErkJggg==)](https://deepwiki.com/cao-xu/git-kit)


[English](./README.md) | [简体中文](./README_zh.md)

**Git-Kit** is a collection of powerful, interactive shell scripts designed to automate the most common (and often tedious) tasks in a developer's daily Git workflow. From syncing branches to creating perfectly formatted merge requests, Git-Kit makes you faster, more consistent, and less prone to error.

This toolkit was born from real-world development pain points and is built for maximum efficiency and team collaboration.

---

## 📑 Table of Contents

- [✨ Core Features](#-core-features)
- [🆚 The Git-Kit Advantage](#-the-git-kit-advantage)
- [🏁 Quick Start](#-quick-start)
- [🔧 Configuration](#-configuration)
- [🤝 Contributing](#-contributing)
- [📜 License](#-license)

## ✨ Core Features

- **`git-sync`**: Interactively syncs your feature branch with the main branch (`develop` or `main`), including a robust, guided conflict resolution process.
- **`gitmr`**: Creates a Merge/Pull Request from your current branch to a chosen target. It automatically copies the task URL to your clipboard and opens the MR page in your browser.
- **`gitmr-release`**: A specialized, safety-focused tool for creating release MRs (e.g., `develop` -> `master`), with mandatory branch updates and guided CI status checks.

## 🆚 The Git-Kit Advantage

| Dimension | Manual Workflow 🐢 | With Git-Kit 🚀 | Impact |
| :--- | :--- | :--- | :--- |
| **⏱️ Time** | 5-15 Minutes | **< 1 Minute** | **10x Faster** |
| **🔢 Steps** | 10+ Manual Steps | **~3 Commands** | **Drastically Simplified** |
| **🧠 Mental Load** | High (Fear of mistakes) | **Low** (Guided & Safe) | **Stay in Flow** |
| **🛡️ Reliability** | Low (Prone to human error) | **High** (Standardized & Validated) | **Fewer Mistakes** |
| **🤝 Teamwork** | Inconsistent | **Standardized** | **Better Collaboration** |

## 🏁 Quick Start

### 1. Requirements
- `bash` (v3.2+), standard on macOS and most Linux distributions.
- For Windows, use [Git Bash](https://git-scm.com/downloads), which comes with Git for Windows.

### 2. Clone the Repository
Clone this repository to a permanent location on your local machine (e.g., `~/tools` or `~/dev`).
```bash
git clone https://github.com/YOUR_USERNAME/git-kit.git ~/git-kit
```

### 3. Run the Installer
The installer copies the scripts to `/usr/local/bin` to make them available system-wide.
```bash
# You may be asked for your password
sudo ~/git-kit/install.sh
```
> **Note:** The installer also creates a template configuration file at `~/.git-kit-config.template`.

### 4. Configure for Your Projects
For each of your projects where you want to use Git-Kit, copy the template and customize it.
```bash
# Navigate to your project's directory
cd /path/to/your-project

# Copy the global template to your project's root
cp ~/.git-kit-config.template ./.git-kit-config
```
Now, open `./.git-kit-config` and edit the values to match your project's setup (e.g., project IDs, branch names, repo paths). See the [Configuration](#-configuration) section for more details.

### 5. You're Ready!
Navigate to your project's directory and start using the commands.
```bash
# In your project's directory
git-sync

# Create a feature branch MR
gitmr

# Create a release MR
gitmr-release
```

## 🔧 Configuration

The `.git-kit-config` file is a simple INI-style file that centralizes all your settings. The scripts look for this file in the current repository's root first, then fall back to your home directory (`~/.git-kit-config`) for global settings.

A typical configuration looks like this:
```ini
# .git-kit-config

# [General Settings]
# Used by gitmr and gitmr-release for the MR description
task_management_url = "https://your-org.atlassian.net/browse/PROJ-123"

# [Release Settings]
# Used by gitmr-release
release_target_branch = "master"
release_source_branch = "develop"

# [Project Definitions]
# Used by gitmr and gitmr-release to generate correct MR links.
# Format: Nickname = "ProjectID,RepoPath"
# RepoPath should match the path part of your git remote URL (e.g., group/project-name)
projects = (
  "My-API-Server=12345,my-group/my-api-server"
  "My-Frontend=67890,my-group/my-frontend-app"
)

# [Target Branches for gitmr]
# A list of common branches you can select when creating a feature MR.
target_branches = (
    "develop"
    "main"
    "master"
    "test"
)
```

## 🤝 Contributing

Contributions are welcome! If you have ideas for new features, improvements, or bug fixes, please open an issue or submit a pull request.

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=cao-xu/git-kit&type=Date)](https://www.star-history.com/#cao-xu/git-kit&Date)
