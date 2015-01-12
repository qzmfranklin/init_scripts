# User name and so forth
git config --global user.email "qzmfranklin@gmail.com"
git config --global user.name "Zhongming Qu"

# Global ignore
git config --global core.excludesfile '~/.gitignore_global'
cat gitignore_global >> ~/.gitignore_global

# Bash autocomplete
cp git_bash_completion ~/.git_bash_completion
