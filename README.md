# git-dir
git-dir is a bash script that you can use to run a git command on all of the git repos in a specified directory path.

## 

`git-dir [git command and options] [path]`

If the specified path is a repo, `git-dir` will run the git command on that repo.

`git-dir pull --verbose /dev/repos/mycode`

If the path is not a repo, `git-dir` will search all of the sub-directories in the path for git repos and give you the option to run the git command on all of them.

`git-dir pull /dev/repos/`

## Installation

1. Copy the `git-dir` script into a directory in your execution path:

    `sudo cp git-dir.sh /usr/local/bin`

2. Make sure that it is executable:

    `chmod 744 /usr/local/bin/git-dir.sh`
