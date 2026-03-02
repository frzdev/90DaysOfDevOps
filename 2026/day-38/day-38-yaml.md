# Day 38 – YAML Basics

### Task 1: Key-Value Pairs
Create `person.yaml` that describes yourself with:
- `name`
- `role`
- `experience_years`
- `learning` (a boolean)

**Verify:** Run `cat person.yaml` — does it look clean? No tabs?

[Script](scripts/variables.sh)

![echo](images/task-2.png)
---

### Task 2: Lists
Add to `person.yaml`:
- `tools` — a list of 5 DevOps tools you know or are learning
- `hobbies` — a list using the inline format `[item1, item2]`

Write in your notes: What are the two ways to write a list in YAML?

[Script](scripts/variables.sh)

![echo](images/task-2.png)
---

### Task 3: Nested Objects
Create `server.yaml` that describes a server:
- `server` with nested keys: `name`, `ip`, `port`
- `database` with nested keys: `host`, `name`, `credentials` (nested further: `user`, `password`)

**Verify:** Try adding a tab instead of spaces — what happens when you validate it?

[Script](scripts/variables.sh)

![echo](images/task-2.png)
---

### Task 4: Multi-line Strings
In `server.yaml`, add a `startup_script` field using:
1. The `|` block style (preserves newlines)
2. The `>` fold style (folds into one line)

Write in your notes: When would you use `|` vs `>`?

[Script](scripts/variables.sh)

![echo](images/task-2.png)
---

### Task 5: Validate Your YAML
1. Install `yamllint` or use an online validator
2. Validate both your YAML files
3. Intentionally break the indentation — what error do you get?
4. Fix it and validate again

[Script](scripts/variables.sh)

![echo](images/task-2.png)
---

### Task 6: Spot the Difference
Read both blocks and write what's wrong with the second one:

```yaml
# Block 1 - correct
name: devops
tools:
  - docker
  - kubernetes
```

```yaml
# Block 2 - broken
name: devops
tools:
- docker
  - kubernetes
```
# Explanation:
The issue in Block 2 is incorrect indentation of the list items under tools.

# Block 2 - broken
name: devops
tools:
- docker
  - kubernetes
🔎 Problem:

- docker is not properly indented under tools.

- kubernetes is indented differently.

YAML requires consistent indentation for list items under a key.
---

## What you learned (3 key points)
1️⃣ YAML relies on proper indentation for structure instead of brackets.

2️⃣ Lists are created using -, making configurations clean and readable.

3️⃣ YAML is widely used in DevOps tools like Kubernetes, Docker Compose, and CI/CD pipelines.
---
