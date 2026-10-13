{pkgs,...}:
{
	programs.zsh = {
		enable = true;
		enableCompletion = true;

		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;

		antidote = {
			enable = true;

			# plugins = {
				# "zsh-users/zsh-autosuggestions"
        # "zsh-users/zsh-syntax-highlighting"
        # "zsh-users/zsh-history-substring-search"
			# };
			
		};
	};
}
