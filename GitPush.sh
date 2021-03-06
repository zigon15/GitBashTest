#Stores the commit message
CommitMsg=$1
GitDir=$2

cd "$GitDir"

if [ -z "$CommitMsg" ]
then
    echo "Commit Mesage invalid"
    exit;
else
    echo -e "Commit Message: \033[0;32m$CommitMsg\033[0;39m"
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

#Set text colour to yellow
echo -e "\033[0;92m"

#Add all files that have been changed to staging
git add .

#All all stages file to a commit
git commit -m "$CommitMsg"

#Push the commit to the remote repo
git push

#set text colour back to default colour
echo -e "\033[0;39m"