os=$(uname)
case $os in
    "Darwin"*)
        alias eb="mvim ~/.bash_profile"
        alias sb="source ~/.bash_profile"
        alias l="ls -GF"
        alias ls="ls -aGF"
        alias ll="ls -alGhF"
        ;;
    "Linux"*)
	echo Linux
        alias eb="gvim ~/.bashrc"
        alias sb="source ~/.bashrc"
        alias l="ls -F --color"
        alias ls="ls -aF --color"
        alias ll="ls -alhF --color"
        alias pbpaste="xclip -selection clipboard"
        alias pbcopy="xclip -selection clipboard -o"
        ;;
esac

alias ..="cd .."
alias up="cd .."
alias ff="find . -name"
