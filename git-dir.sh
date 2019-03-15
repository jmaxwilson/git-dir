# git-dir
# A useful bash script for running git commands on directories
if [[ $# -eq 0 ]] ; then # If no arguments are passed offer some guidance 
        printf "Usage: git-dir [git commands and options] [path]\n\n"
else
        INIT_DIR="$PWD" # Store the current directory so we can return to it
        GIT_ARGS=${@:1:$(($# - 1))} # Get all of the args except for the last one as git arguments
        TARGET_PATH=${@:$#} # Get the last argument as the target path
        cd "$TARGET_PATH" # change to the target path directory
        if [ -d .git ]; then # If the current directory is a git repo then run the git command here
                git $GIT_ARGS
        else # If the current directory is not a repo, search subdirs for repos and run the git command on them
                ls -R --directory --color=never */.git | sed 's/\/.git//' | xargs -P10 -I{} git -C {} $GIT_ARGS
        fi        
        cd "$INIT_DIR" # return to the directory that we started in
fi
