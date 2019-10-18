#Stores the commit message
CommitMsg=$1

if [ -z "$CommitMsg" ]
then
    echo "Commit Mesage invalid"
    exit;
else
    echo -e "Commit Message: \033[0;32m$CommitMsg\033[0;37m"
fi

CurrentGitBranch="$(git branch | grep \* | cut -d ' ' -f2)"

echo -e "Current Git Working Branch: \033[0;36m$CurrentGitBranch\033[0;37m"

while true; do
    read -p "Is this correct? (y/n):" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

cd "G:\2-Computer Coding\Git Test"

#Add all files that have been change to staging
git add .

#All all stages file to a commit
git commit -m "$CommitMsg"

#Push the commit to the remote repo
git push