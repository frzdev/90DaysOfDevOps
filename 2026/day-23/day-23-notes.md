# Day 23 – Git Branching & Working with GitHub

## Task 1: Understanding Branches
1. What is a branch in Git?

 A branch is a separate line of development in Git.
 It allows developers to work on new features or fixes without affecting the main code.

2. Why do we use branches instead of committing everything to main?
 
 Branches allow developers to develop features safely without breaking the main code.
 After testing, the changes can be merged into the main branch.

3. What is HEAD in Git?

  HEAD is a pointer that refers to the current branch and latest commit you are working on.

4. What happens to your files when you switch branches?

  When you switch branches, Git updates your working directory to match the files of that branch.
  Your files change to the version stored in that branch.

---

## Task 2: Branching Commands — Hands-On
 1. List all branches in your repo
    
git branch

 3. Create a new branch called feature-1
    
git branch feature-1

# 3. Switch to feature-1
git checkout feature-1

# 4. Create a new branch and switch to it in a single command — call it feature-2
git checkout -b feature-2

# 5. Try using git switch to move between branches — how is it different from git checkout?
git switch feature-1

# 6. Make a commit on feature-1 that does not exist on main
git add .
git commit -m "Add new feature"

# 7. Switch back to main — verify that the commit from feature-1 is not there
git checkout main

# 8. Delete a branch you no longer need
git branch -d feature-1

---
## Task 3: Push to GitHub

