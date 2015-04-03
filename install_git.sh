# User name and so forth
git config --global user.email "qzmfranklin@gmail.com"
git config --global user.name "Zhongming Qu"

# Global ignore
git config --global core.excludesfile '~/.gitignore_global'
cat gitignore_global >> ~/.gitignore_global

# Bash autocomplete
cp git_bash_completion ~/.git_bash_completion

# Use SSH to avoid having to type passwords
git config --global url.ssh://git@github.com/.insteadOf https://github.com/

# Default push mode to 'simple': the pre-2.0 behavior
git config --global push.default simple

# No extra edit when merging
git config --global core.mergeoptions --no-edit