# Git Commands

## Branches

### Add New Branch
    `git checkout -b <branch name>`

### List Branches
    `git branch`

### Remove Branch
Delete Local Branch
    `git branch -d <branch name>`

Delte Remote Branch
    `git push <remote_name> :<branch_name>`

## Misc

Different between `git pull` and `git fetch`
    *>git pull is shorthand for git fetch followed by git merge FETCH_HEAD
    >

To make git track all new files
    *`git add .`


## Push
Need to add upstream branch for git to push to
    *`git push --set-upstream <repo name> <branch>`