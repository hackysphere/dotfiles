if status is-interactive
    # Commands to run in interactive sessions can go here
	fish_config theme choose catppuccin-mocha

	export PATH="/home/hcks/.local/share/../bin:$PATH"
	set EDITOR nvim

	abbr compose docker compose
	abbr l "lsd -lg"
	alias ll "lsd -l"
	alias la "lsd -al"
	alias lg "lsd -alg"

	alias datawriting "watch -n1 'cat /proc/meminfo | grep Dirty'"
	alias clock "tty-clock -sBcC4"

	abbr cat bat
	abbr ls lsd
end

zoxide init fish | source
