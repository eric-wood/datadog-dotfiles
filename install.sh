setup-repo devtools

git config --global user.name "Eric Wood"
git config --global user.email "eric.wood@datadoghq.com"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat >> ~/.zshrc <<-EOM
ZSH_THEME="nicoulaj"
plugins=(git tmux)

source $ZSH/oh-my-zsh.sh
EOM