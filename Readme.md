**DISCLAIMER: _Mainly for my reference, use at your own risk_**

# Git Commands

## Remote Repo
1. Set a new remote
`git remote add origin https://github.com/user/repo.git`

2. Verify new remote
`git remote -v`

3. Remove remote
`git remote rm "remoteName"`

## Updating .gitignore Settings
1. `git rm -r --cached .`
2. `git add .`

## Branches

Add New Branch command: `git checkout -b <branch name>`

List Branches command:`git branch`

### Remove Branch
Delete Local Branch command:`git branch -d <branch name>`

Delte Remote Branch command: `git push <remote_name> :<branch_name>`

## Fetch and Pull

Different between `git pull` and `git fetch`
>git pull is shorthand for git fetch followed by git merge FETCH_HEAD

Basically pulls latest commit from remote repo

To make git track all new files
`git add .`

## Push
Make sure to add upstream branch for git to push to: 
`git push --set-upstream <repo name> <branch>`

i.e. `git push --set-upstream origin master>`

Push commit to remote repo
`git push`

## Commit
Commit changes to a branch branch: `git commit -m "Updated git commands"`

## Merge
1. Checkout the branch you want to merge to. `git checkout <branch>`
2. Then merge `git merge <branch to merge>`