# pruebatecnicapart-1
# DevOps Technical Test Project

This repository contains a technical test to evaluate skills in Git, branch management, Pull Requests, and creating workflows with GitHub Actions.

## Prerequisites
Before starting, make sure you have the following tools installed:

- Git
- Text editor or IDE (such as Visual Studio Code)

## Branch Structure and Pull Requests

### Branches used:
- **main**: Main branch for production.
- **develop**: Development branch.
- **feature/add-github-actions**: Branch for adding workflows.
- **bugfix/fix-typo**: Branch for fixing typos.

### Created Pull Requests:
1. **PR_feature-add-github-actions**
   - **Description**: A workflow was added to check the syntax of the README.md file.
   - **Source branch**: `feature/add-github-actions`
   - **Target branch**: `develop`

2. **PR_bugfix-fix-typo**
   - **Description**: A typo was fixed in `login.txt`.
   - **Source branch**: `bugfix/fix-typo`
   - **Target branch**: `main`

## GitHub Actions

### Implemented Workflows:
1. **README.md Syntax Check**
   - **Event**: Creation of a Pull Request to the `develop` branch.
   - **Description**: This workflow checks for syntax errors in the README.md file.

2. **Simulated Deployment on Main**
   - **Event**: Push to the `main` branch.
   - **Description**: This workflow simulates a deployment and prints "Deploy Successful" to the console.

## Steps to Execute

1. **Clone the repository:**
   ```bash
   git clone https://github.com/username/repo.git
   ```

2. **Switch to the desired branch:**
   ```bash
   git checkout develop
   ```

3. **Run workflows automatically by following the configured GitHub Actions.**
