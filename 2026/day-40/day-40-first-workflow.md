
# Day 40 – Your First GitHub Actions Workflow

### Task 1: Set Up
1. Create a new **public** GitHub repository called `github-actions-practice`
2. Clone it locally
3. Create the folder structure: `.github/workflows/`

---

### Task 2: Hello Workflow
Create `.github/workflows/hello.yml` with a workflow that:
1. Triggers on every `push`
2. Has one job called `greet`
3. Runs on `ubuntu-latest`
4. Has two steps:
   - Step 1: Check out the code using `actions/checkout`
   - Step 2: Print `Hello from GitHub Actions!`

Push it. Go to the **Actions** tab on GitHub and watch it run.

**Verify:** Is it green? Click into the job and read every step.

---

### Task 3: Understand the Anatomy

- `on:` 
 -Purpose: Defines when the workflow will run (trigger).
  
 Examples:
     When code is pushed
     When a pull request is created
     On a schedule
     Manually
Example:
```
on:
  push:
    branches: [main]
  pull_request:
```
  Meaning:
  
 The workflow runs when code is pushed to the main branch or when a pull request is opened/updated.
