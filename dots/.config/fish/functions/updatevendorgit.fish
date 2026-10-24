function updatevendorgit
	set prevdir $PWD

	for i in $HOME/Documents/Repos/VENDOR/*
		echo $i;
		cd $i;
		git pull;
	end

	cd "$prevdir"
end
