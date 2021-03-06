# -- PATH
export PYENV_ROOT="${HOME}/.pyenv"
PATH="${PYENV_ROOT}/bin:${HOME}/.poetry/bin:${PATH}"
PATH="${HOME}/.deno/bin:${PATH}"
PATH="${HOME}/.fnm:${PATH}"
PATH="${HOME}/.rvm/bin:${PATH}"
PATH="${HOME}/.cargo/bin:${PATH}"
PATH="${HOME}/.config/composer/vendor/bin:${PATH}"
PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"
PATH="/opt/wine-stable/bin:${PATH}"
export PATH
# --


# -- THEMING
# TODO: how to do cross-shell but terminal-dependent theming?

# awesome less presets from
# https://www.topbug.net/blog/2016/09/27/make-gnu-less-more-powerful/
export LESS='-F -i -J -M -R -W -x4 -X -z-4'
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

export BAT_THEME=OneHalfLight
# --

# -- HISTORY
# TODO: is this bash-specific?
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE="${HOME}/.bash_eternal_history"
# --


export EDITOR="e"
