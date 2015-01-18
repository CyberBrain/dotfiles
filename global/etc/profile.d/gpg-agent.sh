# GPG Agent
if [[ -z "$(pgrep -U $UID gpg-agent)" ]]; then
    eval "$(gpg-agent --daemon --use-standard-socket --allow-preset-passphrase --write-env-file ~/.gpg-agent-info)"
fi
