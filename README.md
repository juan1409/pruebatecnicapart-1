
# pruebatecnicapart-1
# Prueba Técnica Part 1 – GitHub Actions & CircleCI Simulation

## **Project Overview**
This project demonstrates a practical implementation of Git workflows, GitHub Actions, and CircleCI simulation using GitHub Actions. It covers the following key points:

- Git branching strategy (`main`, `develop`, `feature/*`, `bugfix/*`)
- Pull Request (PR) workflow for merging branches
- Automated workflows using GitHub Actions
- CircleCI workflow simulation for build and test jobs
- Bash script integration and testing using `bats`

---

## **Repository Structure**
```plaintext
├── .github/
│   └── workflows/
│       ├── verify-readme.yml          # GitHub Action to verify README.md syntax
│       └── circleci-simulation.yml    # CircleCI simulation for build and test jobs
├── README.md                          # Project documentation
├── login.txt                          # Sample file for testing purposes
└── script.sh                          # Bash script used in CircleCI simulation

Branching Strategy
The repository follows a structured Git workflow with multiple branches:

main: The main production branch. All stable code is merged here.
develop: Main development branch. All new features and bug fixes are integrated here.
feature/*: Used for new features (e.g., feature/add-github-actions).
bugfix/*: Used for fixing bugs (e.g., bugfix/fix-typo).
Example PRs:
Feature PR: Merging feature/add-github-actions into develop.
Bugfix PR: Merging bugfix/fix-typo into main.
GitHub Actions
Two GitHub Actions workflows are implemented in this project:

Verify README Syntax
This workflow runs whenever a PR is created for the develop branch. It verifies the syntax of the README.md file.

Workflow File: .github/workflows/verify-readme.yml

Simulate CircleCI Workflow
This workflow simulates a CircleCI build and test job. It runs on every commit to the main branch.

Jobs in the Workflow:

Build Job: Executes a sample Bash script (script.sh) for file manipulation and calculations.
Test Job: Runs unit tests using bats to validate the functionality of the Bash script.
Workflow File: .github/workflows/circleci-simulation.yml

How to Run the Project Locally
Clone the Repository


git clone https://github.com/juan1409/pruebatecnicapart-1.git
cd pruebatecnicapart-1
View GitHub Actions Logs
Navigate to the Actions tab to check the workflows' logs.

CircleCI Workflow Simulation
The CircleCI simulation includes two jobs: build and test.

Build Job
The build job executes the script.sh Bash script. The script performs simple arithmetic operations and manipulates a sample file.


#!/bin/bash
echo "Performing calculations..."
result=$((5 + 10))
echo "Result: $result"
Test Job
The test job runs unit tests using the bats framework.

Example Test:


#!/usr/bin/env bats

@test "Check if the script runs successfully" {
  run ./script.sh
  [ "$status" -eq 0 ]
}
Commands Used During Development
Git Workflow

# Creating a new branch
git checkout -b feature/add-github-actions

# Adding changes and committing
git add .
git commit -m "Add GitHub Actions workflow"

# Pushing to remote
git push origin feature/add-github-actions
GitHub Actions
The workflows are located in the .github/workflows directory and automatically execute based on the branch or event type.

Future Improvements
Add integration tests.
Implement CI/CD pipeline for production deployment.
Add more extensive error handling in Bash scripts.
Contact
For questions or suggestions, please contact Juan David.

yaml

---

### **Steps to Upload and Push This `README.md` from Git Bash:**

1. **Edit or Create the README.md file**  
   You can edit the existing README.md or create a new one using the following command:
   ```bash
   nano README.md
Paste the content above and save it.

Add and Commit the Changes


git add README.md
git commit -m "Update README with project documentation"
Push the Changes to the Repository


git push origin main
