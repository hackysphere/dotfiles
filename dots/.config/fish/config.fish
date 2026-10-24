if status is-interactive
    # Commands to run in interactive sessions can go here
	fish_config theme choose catppuccin-mocha

	fish_add_path -P ~/.local/bin ~/go/bin
	set -x VISUAL nvim
	set -x EDITOR nvim

	abbr ks kitten ssh
	abbr lzg lazygit
	abbr compose docker compose
	abbr l "lsd -lg"
	alias ll "lsd -l"
	alias la "lsd -al"
	alias lg "lsd -alg"

	alias datawriting "watch -n1 'cat /proc/meminfo | grep Dirty'"
	alias metadataclear "exiftool -all= --icc_profile:all -tagsfromfile @ -colorspacetags"

	abbr cat bat
	abbr ls lsd

	# this needs to be REALLY cleaned up (a python or fish script or something idk)
	alias vaultget 'VAULT=(pass-cli vault list | grep -o -P "(?<=\=\=\]: ).*" | fzf) pass-cli item view --vault-name=$VAULT --item-title=(pass-cli item list --vault-name=$VAULT | grep -o -P "(?<=\=\=\]: ).*(?= \(state\=)" | fzf)'

	function tsreload
		# this section is all joined so that it all depends on the previous commands
		nmcli connection up nano-wg && sudo systemctl restart tailscaled && sleep 5
		nmcli connection down nano-wg
	end
end

zoxide init fish | source
