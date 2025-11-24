## Basic Commands

```bash
# Initialize a new Git repository
git init

# Clone a repository
git clone <repository-url>

# Check status of your files
git status

# Add files to staging area
git add <file-name>     # Add specific file
git add .               # Add all files

# Commit changes
git commit -m "Your commit message"

# Push changes to remote
git push origin <branch-name>

# Pull changes from remote
git pull origin <branch-name>
```

## Local Management

```bash
# Get branches from remote
git fetch origin

# List deleted remote branches still in local
git fetch -p && git branch -vv | grep ': gone]'

# Remove all local branches that are not on remote
git fetch -p && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D
```

## Branching

```bash
# List all branches
git branch

# Create a new branch
git branch <branch-name>

# Create and switch to a new branch
git checkout -b <branch-name>

# Switch to a branch
git checkout <branch-name>

# Delete a branch
git branch -d <branch-name>
```

## History and Diff

```bash
# View commit history
git log
git log --oneline        # Compact view

# Compare changes
git diff                 # Unstaged changes
git diff --staged        # Staged changes
git diff <commit1> <commit2>  # Between commits
```

## Merging and Rebasing

```bash
# Merge a branch into current branch
git merge <branch-name>

# Rebase current branch onto another
git rebase <branch-name>

# Continue after resolving conflicts
git merge --continue
git rebase --continue
```

## Undoing Changes

```bash
# Discard changes in working directory
git restore <file-name>
git checkout -- <file-name>   # Old syntax

# Unstage files
git restore --staged <file-name>
git reset HEAD <file-name>    # Old syntax

# Amend last commit
git commit --amend

# Reset to a previous commit
git reset --soft <commit>     # Keep changes staged
git reset --mixed <commit>    # Keep changes unstaged
git reset --hard <commit>     # Discard changes
```

## Stashing

```bash
# Stash changes
git stash

# List stashes
git stash list

# Apply stash
git stash apply           # Most recent stash
git stash apply stash@{n} # Specific stash

# Pop stash (apply and remove)
git stash pop

# Drop stash
git stash drop stash@{n}
```
