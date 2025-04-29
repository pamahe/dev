# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export XDG_CONFIG_HOME=$HOME/.config
VIM="nvim"

PERSONAL=$XDG_CONFIG_HOME/personal
DEV_ENV=$HOME/dev-env
for i in `find -L $PERSONAL`; do
	source $i
done

export GIT_EDITOR=$VIM
export DEV_ENV_HOME="$HOME/personal/dev-env"

dev_env() {

}

addToPath() {
	if [[ "$PATH" != *"$1"* ]]; then
		export PATH=$PATH:$1
	fi
}
addToPathFront() {
	if [[ -z "$2" ]] || [[ "$PATH" != *"$1"* ]];then
		export PATH=$1:PATH
	fi
}

addToPathFront $HOME/.local/apps
addToPathFront $HOME/.local/scripts
addToPathFront $HOME/.local/bin
addToPathFront $HOME/.local/apps/

addToPAth $HOME/.local/personal
