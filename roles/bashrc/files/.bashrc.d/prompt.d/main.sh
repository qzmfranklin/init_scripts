# Define a highly desirable prompt: git-aware when inside a git repo and generic
# when outside of a git repo.

[ -f ~/.bashrc.d/prompt.d/generic.sh ] && . ~/.bashrc.d/prompt.d/generic.sh

[ -f ~/.bash-git-prompt/gitprompt.sh ] && . ~/.bash-git-prompt/gitprompt.sh
export GIT_PROMPT_ONLY_IN_REPO=1
