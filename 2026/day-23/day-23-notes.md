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

 3. Switch to feature-1

git checkout feature-1

 4. Create a new branch and switch to it in a single command — call it feature-2
    
git checkout -b feature-2

5. Try using git switch to move between branches — how is it different from git checkout?
   
git switch feature-1

 6. Make a commit on feature-1 that does not exist on main

git add .
git commit -m "Add new feature"

7. Switch back to main — verify that the commit from feature-1 is not there
   
git checkout main

 8. Delete a branch you no longer need
    
git branch -d feature-1

---
## Task 3: Push to GitHub

1. Create a new repository on GitHub (do NOT initialize it with a README)



2. Connect your local devops-git-practice repo to the GitHub remote
 
 Connect local repo to GitHub
 git remote add origin https://github.com/username/devops-git-practice.git

3. Push your main branch to GitHub

 i)Rename branch to main (if needed)
 git branch -M main

ii)Push main branch
git push -u origin main  

4. Push feature-1 branch to GitHub

Push feature branch
git push origin feature-1
   

5. Verify both branches are visible on GitHub

Verify remote
git remote -v

Example:
Verify Branches on GitHub
Open your GitHub repository.
Click the branch dropdown (usually shows main).
You should see both branches:
main
feature-1


6. Answer in your notes: What is the difference between origin and upstream?

origin → Default remote repository where you push your code (usually your own GitHub repo).
upstream → The original repository you forked from, used to pull updates from the main project.

Example
git remote add origin https://github.com/yourname/devops-git-practice.git
git remote add upstream https://github.com/original/devops-git-practice.git
origin → your repo
upstream → original project repo

----
## Task 4: Pull from GitHub
1. Make a change to a file directly on GitHub (use the GitHub editor)

i)Open your repository on GitHub.
ii)Open a file (e.g., README.md).
iii)Click the Edit (✏️) icon.
iv)Add a line like:
v)Update from GitHub editor
vi)Add a commit message and click Commit changes.
   
2. Pull that change to your local repo

   Run this command in your local repo:
   git pull origin main
 
3. Answer in your notes: What is the difference between git fetch and git pull?
4. 
git fetch downloads changes from the remote repository without merging them, while git pull downloads the changes and automatically merges them into the current branch.

---
## Task 5: Clone vs Fork
1. What is the difference between clone and fork?
   
Clone: Creates a local copy of a repository on your computer.
Fork: Creates a copy of someone else's repository in your GitHub account.


2. When would you clone vs fork?
   
Clone: When you have access to the repository and want to work on it locally.
Fork: When you want to contribute to someone else’s project without direct write access.


3. After forking, how do you keep your fork in sync with the original repo?
   
Add the original repository as upstream and pull updates:
git remote add upstream <original-repo-url>git fetch upstreamgit merge upstream/main







