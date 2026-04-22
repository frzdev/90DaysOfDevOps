# Day 22 – Introduction to Git: Your First Repository

## Task 1: Install and Configure Git
1. Verify Git is installed on your machine
2. Set up your Git identity — name and email
3. Verify your configuration

   ![snapshot](images/git-version.jpg)
   
---

## Task 2: Create Your Git Project
1. Create a new folder called `devops-git-practice`
2. Initialize it as a Git repository
3. Check the status — read and understand what Git is telling you
4. Explore the hidden `.git/` directory — look at what's inside

   ![snapshot](images/git-init.jpg)

---

## Task 4: Stage and Commit
1. Stage your file
2. Check what's staged
3. Commit with a meaningful message
4. View your commit history

   ![snapshot](images/git-add-commi-log.jpg)
   
---

## Task 5: Make More Changes and Build History
1. Edit `git-commands.md` — add more commands as you discover them
2. Check what changed since your last commit
3. Stage and commit again with a different, descriptive message
4. Repeat this process at least **3 times** so you have multiple commits in your history
5. View the full history in a compact format

   ![snapshot](images/add-git-commnads.png)
   
   
---

## Task 6: Understand the Git Workflow

1. What is the difference between `git add` and `git commit`?

-   **git add** → moves changes from the **working directory to the
    staging area**.
-   **git commit** → saves the staged changes permanently in the **Git
    repository**.

Example flow:

    edit file → git add file → git commit -m "message"

------------------------------------------------------------------------

2. What does the **staging area** do? Why doesn't Git just commit directly?

The **staging area** lets you **select which changes should go into the
next commit**.

Reason: - You may change many files. - You might want to **commit only
some changes**.

Flow:

    Working Directory → Staging Area → Repository

------------------------------------------------------------------------

3. What information does `git log` show you?

`git log` shows the **commit history**, including: - Commit ID (hash) -
Author name - Date of commit - Commit message

------------------------------------------------------------------------

4. What is the `.git/` folder and what happens if you delete it?

The **`.git/` folder** stores: - commit history - branches -
configuration - repository data

If you **delete `.git/`**, the project **stops being a Git repository**
and all version history is lost.

------------------------------------------------------------------------
5. What is the difference between a **working directory**, **staging area**, and **repository**?

  Area                Meaning
  ------------------- ---------------------------------------------------
  Working Directory   Files you are currently editing
  Staging Area        Temporary area where you prepare files for commit
  Repository          Permanent Git history of commits

Flow:

    Working Directory → Staging Area → Repository
