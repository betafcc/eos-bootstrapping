# Thes were all aliases previously , but bash is unreliable when
# expanding aliases that contain aliases, for example when using
# in a non-interactive environment, so I ported to functions


@__emacs_env() { TERM=xterm-256color XLIB_SKIP_ARGB_VISUALS=1 "$@"; }
@__emacs_bin() { @__emacs_env emacs26 "$@"; }
@__emacsclient_bin() { @__emacs_env emacsclient26 "$@"; }


# isolated emacs (does not attempt daemon connection)
@emacs() { @__emacs_bin -nw "$@"; }
@xemacs() { @__emacs_bin "$@"; }  # gui


@emacsclient() { @__emacsclient_bin "$@"; }

# start daemon if not already and connect, this is my default way to open emacs
@emax() { @emacsclient -a="" -nw "$@"; }
@xemacs() { @emacsclient -a="" -c "$@"; }  # gui

# # if emacs daemon is running, connect, else, open isolated
# # this is good for other scripts to open the editor
# # as quick as possible without leaving a daemon behind
@emax_or_emacs() {
    if ! @emacsclient -e 0 >&/dev/null
    then
        @emacs "$@"
    else
        @emax "$@"
    fi
}


@xemax_or_xemacs() {
    if ! @emacsclient -e 0 >&/dev/null
    then
        @xemacs "$@"
    else
        @xemax "$@"
    fi
}
