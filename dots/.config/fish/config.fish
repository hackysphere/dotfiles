if status is-interactive
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

	function vaultget
		set vault (pass-cli vault list | grep -o -P "(?<=\=\=\]: ).*" | fzf)
		set item (pass-cli item list --vault-name=$vault | grep -o -P "(?<=\=\=\]: ).*(?= \(state\=)" | fzf)
		pass-cli item view --vault-name=$vault --item-title=$item
	end

	function tsreload
		# this section is all joined so that it all depends on the previous commands
		nmcli connection up nano-wg && sudo systemctl restart tailscaled && echo "Waiting for tailscale to reload" && sleep 5
		nmcli connection down nano-wg
	end

	function updatevendorgit
		set prevdir $PWD

		for i in $HOME/Documents/Repos/VENDOR/**/.git
			echo $i;
			cd $i/..;
			git pull;
		end

		cd "$prevdir"
	end
end

zoxide init fish | source
