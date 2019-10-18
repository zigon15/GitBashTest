#Stores the commit message
CommitMsg=$1

if [ -z "$CommitMsg"] 
then
    echo "Commit Mesage invalid"
else
    echo "Commit Mesage: $CommitMsg"

    cd "G:\2-Computer Coding\Git Test"

    #Add all files that have been change to staging
    git add .

    #All all stages file to a commit
    git commit -m "$CommitMsg"

    #Push the commit to the remote repo
    git push
fi
