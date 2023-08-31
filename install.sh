setup-repo devtools

git config --global user.name "Eric Wood"
git config --global user.email "eric.wood@datadoghq.com"
git config --global core.editor "vim"
git config --global alias.mr "push -u origin HEAD"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat >> ~/.zshrc <<-EOM
ZSH_THEME="nicoulaj"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias psqlws='psql postgres://dog:dog@localhost:15433/dogdata'

source ~/.config/dogweb.shellrc
EOM