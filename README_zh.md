# 🚀 Git-Kit: 简化你的日常 Git 工作流

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Shell Script](https://img.shields.io/badge/Language-Shell%20Script-blue.svg)](./scripts)
[![Compatibility](https://img.shields.io/badge/Compatibility-macOS%20%7C%20Linux%20%7C%20Windows%20(Git%20Bash)-brightgreen.svg)]()
[![DeepWiki](https://img.shields.io/badge/DeepWiki-git--kit-blue?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAyCAYAAAAnWDnqAAAAAXNSR0IArs4c6QAAA05JREFUaEPtmUtyEzEQhtWTQyQLHNak2AB7ZnyXZMEjXMGeK/AIi+QuHrMnbChYY7MIh8g01fJoopFb0uhhEqqcbWTp06/uv1saEDv4O3n3dV60RfP947Mm9/SQc0ICFQgzfc4CYZoTPAswgSJCCUJUnAAoRHOAUOcATwbmVLWdGoH//PB8mnKqScAhsD0kYP3j/Yt5LPQe2KvcXmGvRHcDnpxfL2zOYJ1mFwrryWTz0advv1Ut4CJgf5uhDuDj5eUcAUoahrdY/56ebRWeraTjMt/00Sh3UDtjgHtQNHwcRGOC98BJEAEymycmYcWwOprTgcB6VZ5JK5TAJ+fXGLBm3FDAmn6oPPjR4rKCAoJCal2eAiQp2x0vxTPB3ALO2CRkwmDy5WohzBDwSEFKRwPbknEggCPB/imwrycgxX2NzoMCHhPkDwqYMr9tRcP5qNrMZHkVnOjRMWwLCcr8ohBVb1OMjxLwGCvjTikrsBOiA6fNyCrm8V1rP93iVPpwaE+gO0SsWmPiXB+jikdf6SizrT5qKasx5j8ABbHpFTx+vFXp9EnYQmLx02h1QTTrl6eDqxLnGjporxl3NL3agEvXdT0WmEost648sQOYAeJS9Q7bfUVoMGnjo4AZdUMQku50McCcMWcBPvr0SzbTAFDfvJqwLzgxwATnCgnp4wDl6Aa+Ax283gghmj+vj7feE2KBBRMW3FzOpLOADl0Isb5587h/U4gGvkt5v60Z1VLG8BhYjbzRwyQZemwAd6cCR5/XFWLYZRIMpX39AR0tjaGGiGzLVyhse5C9RKC6ai42ppWPKiBagOvaYk8lO7DajerabOZP46Lby5wKjw1HCRx7p9sVMOWGzb/vA1hwiWc6jm3MvQDTogQkiqIhJV0nBQBTU+3okKCFDy9WwferkHjtxib7t3xIUQtHxnIwtx4mpg26/HfwVNVDb4oI9RHmx5WGelRVlrtiw43zboCLaxv46AZeB3IlTkwouebTr1y2NjSpHz68WNFjHvupy3q8TFn3Hos2IAk4Ju5dCo8B3wP7VPr/FGaKiG+T+v+TQqIrOqMTL1VdWV1DdmcbO8KXBz6esmYWYKPwDL5b5FA1a0hwapHiom0r/cKaoqr+27/XcrS5UwSMbQAAAABJRU5ErkJggg==)](https://deepwiki.com/cao-xu/git-kit)

[English](./README.md) | [简体中文](./README_zh.md)

**Git-Kit** 是一套功能强大、交互式的 Shell 脚本集合，旨在自动化开发者日常 Git 工作流中最常见（且常常是繁琐）的任务。从同步分支到创建格式完美的合并请求，Git-Kit 让你更快、更规范，也更少出错。

这套工具集诞生于真实开发中的痛点，为追求最高效率和团队协作而构建。

---

## 📑 目录

- [✨ 核心功能](#-核心功能)
- [🆚 使用前后对比](#-使用前后对比git-kit-的优势)
- [🏁 快速开始](#-快速开始)
- [🔧 配置](#-配置)
- [🤝 贡献](#-贡献)
- [📜 许可证](#-许可证)

## ✨ 核心功能

- **`git-sync`**：以交互方式将你的功能分支与主干分支（如 `develop` 或 `main`）同步，包含一个健壮的、引导式的冲突解决流程。
- **`gitmr`**：从你当前的分支创建合并请求（Merge/Pull Request）到指定的目标分支。它会自动复制任务链接到你的剪贴板，并在浏览器中打开 MR 页面。
- **`gitmr-release`**：一个专门为创建发布 MR（例如从 `develop` 到 `master`）设计的、注重安全的工具，带有强制性的分支更新和引导式 CI 状态检查功能。

## 🆚 使用前后对比：Git-Kit 的优势

| 维度 | 手动工作流 🐢 | 使用 Git-Kit 🚀 | 带来的影响 |
| :--- | :--- | :--- | :--- |
| **⏱️ 时间** | 5-15 分钟 | **< 1 分钟** | **10倍效率提升** |
| **🔢 步骤** | 10+ 个手动步骤 | **3 个命令** | **极大简化** |
| **🧠 心智负担** | 高 (担心犯错) | **低** (引导式，安全) | **保持心流** |
| **🛡️ 可靠性** | 低 (易出人为错误) | **高** (标准化，已验证) | **更少失误** |
| **🤝 团队协作** | 流程不一致 | **流程标准化** | **更好的协作** |

## 🏁 快速开始

### 1. 环境要求
- `bash` (v3.2+)，在 macOS 和大多数 Linux 发行版上都是标配。
- Windows 用户请使用 [Git Bash](https://git-scm.com/downloads)，它随 Git for Windows 一同安装。

### 2. 克隆仓库
将此仓库克隆到你本地电脑的一个固定位置 (例如 `~/tools` 或 `~/dev`)：
```bash
git clone https://github.com/YOUR_USERNAME/git-kit.git ~/git-kit
```

### 3. 运行安装脚本
安装脚本会将所有 Git-Kit 命令复制到 `/usr/local/bin` 目录下，以便你在系统的任何地方都能调用它们。
```bash
# 脚本可能会提示你输入密码
sudo ~/git-kit/install.sh
```
> **提示**: 安装脚本还会在你的用户主目录下创建一个配置文件模板 `~/.git-kit-config.template`。

### 4. 为你的项目进行配置
对于每个需要使用 Git-Kit 的项目，你需要将配置模板复制到项目根目录并进行修改。
```bash
# 进入你的项目目录
cd /path/to/your-project

# 将全局配置模板复制到当前项目
cp ~/.git-kit-config.template ./.git-kit-config
```
现在，打开项目根目录下的 `.git-kit-config` 文件，根据你项目的实际情况修改其中的值（例如：项目ID、分支名称等）。更多细节请参考 [配置](#-配置) 章节。

### 5. 准备就绪！
进入你的项目目录，然后就可以开始使用这些命令了！
```bash
# 在你的项目目录中
git-sync

# 创建一个功能分支的 MR
gitmr

# 创建一个发布分支的 MR
gitmr-release
```

## 🔧 配置

`.git-kit-config` 文件是一个简单的 INI 风格的文件，用于集中管理所有配置。脚本会首先在当前仓库的根目录寻找该文件，如果找不到，则会回退到你的用户主目录 (`~/.git-kit-config`) 下寻找全局配置。

一个典型的配置如下所示：
```ini
# .git-kit-config

# [通用设置]
# gitmr 和 gitmr-release 会用它来生成 MR 描述
task_management_url = "https://your-org.atlassian.net/browse/PROJ-123"

# [发布设置]
# gitmr-release 使用
release_target_branch = "master"
release_source_branch = "develop"

# [项目定义]
# gitmr 和 gitmr-release 用来生成正确的 MR 链接
# 格式：别名 = "项目ID,仓库路径"
# 仓库路径应与你的 git remote URL 的路径部分匹配 (例如：group/project-name)
projects = (
  "My-API-Server=12345,my-group/my-api-server"
  "My-Frontend=67890,my-group/my-frontend-app"
)

# [gitmr 的目标分支]
# 创建功能 MR 时可供选择的常用分支列表
target_branches = (
    "develop"
    "main"
    "master"
    "test"
)
```

## 🤝 贡献

欢迎贡献！如果你有关于新功能、改进或 bug 修复的想法，请随时提 Issue 或提交 Pull Request。

## 📜 许可证

本项目基于 MIT 许可证授权。详情请见 [LICENSE](LICENSE) 文件。

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=cao-xu/git-kit&type=Date)](https://www.star-history.com/#cao-xu/git-kit&Date)