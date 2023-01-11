# PHP version switcher
phpv() {
    valet stop
    brew unlink php@7.1 php@7.2 php@7.3
    brew link --force --overwrite $1
    brew services start $1
    composer global update
	rm -f ~/.config/valet/valet.sock
    valet install
}

# NVM
# if [[ -e "$HOME/.nvm" ]]; then
#    upgrade-nvm () {
#        (
#            cd "$NVM_DIR"
#            git fetch origin
#            git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
#        ) && . "$NVM_DIR/nvm.sh"
#    }
# fi

function read_json () {
    cat $1 | jq | less
}

function install_rust () {
    http --body --ssl tls1.2 https://sh.rustup.rs | sh
}
