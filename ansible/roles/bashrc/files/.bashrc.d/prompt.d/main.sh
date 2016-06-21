# Define a highly desirable prompt: git-aware when inside a git repo and generic
# when outside of a git repo.

[ -f ~/.bashrc.d/prompt.d/git-prompt.sh ] && . ~/.bashrc.d/prompt.d/git-prompt.sh
export GIT_PROMPT_ONLY_IN_REPO=1

[ -f ~/.bashrc.d/prompt.d/generic.sh ] && . ~/.bashrc.d/prompt.d/generic.sh
