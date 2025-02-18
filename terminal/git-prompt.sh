PS1='\[\033]0;$PWD\007\]' # set window title
PS1="$PS1"'\n' # new line
PS1="$PS1"'\[\033[47m\]' # set background to white
PS1="$PS1"'\[\033[1;30m\]' # change to white
PS1="$PS1"'\t'  # show timestamp
PS1="$PS1"'\[\033[40m\]' # set background to black
PS1="$PS1"' \[\033[0;91m\]' # change to red
PS1="$PS1"'\w ' # show working directory

# get the git info
if test -z "$WINELOADERNOEXEC"
	then
		GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
		COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
		COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
		COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
	if test -f "$COMPLETION_PATH/git-prompt.sh"
		then
			. "$COMPLETION_PATH/git-completion.bash"
			. "$COMPLETION_PATH/git-prompt.sh"
			PS1="$PS1"'\[\033[1;33m\]'  # change color to yellow
			PS1="$PS1"'`__git_ps1`'   # bash function
	fi
fi

PS1="$PS1"'\n' # new line
PS1="$PS1"'\[\033[37m\]' # change to white
PS1="$PS1"'$ ' # prompt: always $
