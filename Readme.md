# Git Commands

## Branches

Add New Branch command: `git checkout -b <branch name>`

List Branches command:`git branch`

### Remove Branch
Delete Local Branch command:`git branch -d <branch name>`

Delte Remote Branch command: `git push <remote_name> :<branch_name>`

## Misc

Different between `git pull` and `git fetch`
>git pull is shorthand for git fetch followed by git merge FETCH_HEAD


To make git track all new files
`git add .`


## Push
Make sure to add upstream branch for git to push to
`git push --set-upstream <repo name> <branch>`

Push commit to remote repo
`git push`

## Commit
Commit changes to a branch branch: `git commit -m "Updated git commands"`