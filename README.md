# git-dir
git-dir is a bash script that you can use to run a [git](https://git-scm.com) command on all of the git repos in a specified directory path.

## Installation

Copy the `git-dir` script into a directory in your execution path:

    sudo cp git-dir /usr/local/bin

Make sure that it is executable:

    sudo chmod +x /usr/local/bin/git-dir

Add support for git command tab completion with `git-dir`:

    echo "_xfunc git __git_complete git-dir __git_main" >> ~/.bash_completion

## Usage

    git-dir [git command and options] [path]

If the specified path is a repo, `git-dir` will run the git command on that repo.

    git-dir pull --verbose /dev/repos/mycode

If the path is not a repo, `git-dir` will search all of the sub-directories in the path for git repos and give you the option to run the git command on all of them.

    git-dir pull /dev/repos/

## Demo

![Animated GIF of using git-dir to run git commands on multiple repositories at once](https://raw.githubusercontent.com/jmaxwilson/git-dir/master/demo.gif "Example of using git-dir to run a git command on multiple repositories at once.")
