setup-repo devtools

git config --global user.name "Eric Wood"
git config --global user.email "eric.wood@datadoghq.com"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat >> ~/.zshrc <<-EOM
ZSH_THEME="nicoulaj"
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_ITERM2=true
plugins=(git tmux)

source $ZSH/oh-my-zsh.sh
source ~/.config/dogweb.shellrc
EOM