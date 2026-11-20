{
		programs.fish = {
			enable = true;
			functions = {
				dp = {
					body = ''
						 xdg-open "https://chat.deepseek.com/" &
					'';
				};
				dpc = {
					body = ''
						setsid xdg-open "https://chat.deepseek.com/" >/dev/null 2>&1 &
						disown (jobs -p)
            exit
					'';
				};
			};
		};
		programs.starship = {
    	enable = true;
    	# Автоматически интегрировать с fish (поскольку ранее вы использовали fish)
    	enableFishIntegration = true; 
    };
}
