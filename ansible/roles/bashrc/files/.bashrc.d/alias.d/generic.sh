case `uname` in
    "Darwin"*)
        alias eb="mvim ~/.bash_profile"
        alias sb="source ~/.bash_profile"
        ;;
    "Linux"*)
        alias eb="gvim ~/.bashrc"
        alias sb="source ~/.bashrc"
        ;;
esac

alias ..="cd .."
alias up="cd .."
alias l="ls -GF"
alias ls="ls -aGF"
alias ll="ls -alGhF"
alias ff="find . -name"
