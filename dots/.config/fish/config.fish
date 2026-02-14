if status is-interactive
    # Commands to run in interactive sessions can go here
	fish_config theme choose catppuccin-mocha

	abbr compose docker compose

	alias datawriting "watch -n1 'cat /proc/meminfo | grep Dirty'"
end

zoxide init fish | source
