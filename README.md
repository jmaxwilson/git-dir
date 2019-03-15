# git-dir
This is a bash script that you can use to run a git command on all of the git repos in a specified directory path. 

Copy the script into a directory in your execution PATH and then create an alias:

`sudo cp git-dir.sh /usr/local/bin`

`echo "alias git-dir=/usr/local/bin/git-dir.sh" >> ~/.bash_aliases`

If the specified path is a repo it will run the git commands on that repo.

`git-dir pull --verbose /dev/repos/mycode`

If the path is not a repo, it will search all of the sub-directories of the path for git repos and run the git command on all of them.

`git-dir pull /dev/repos/`