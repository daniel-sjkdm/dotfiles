source ~/.zplug/init.zsh



zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git",   from:oh-my-zsh
zplug "~/.zsh", from:local
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug 'dracula/zsh', as:theme



# Spaceship configuration 
# See https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md
ZSH_THEME="spaceship"
SPACESHIP_CHAR_PREFIX="🚀"
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_COLOR="#50FA7B"
SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_SHOW_FULL="true"
SPACESHIP_HOST_COLOR="#50FA7B"
SPACESHIP_DIR_COLOR="#BD93F9"
SPACESHIP_EXIT_CODE_SHOW="true"



# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose