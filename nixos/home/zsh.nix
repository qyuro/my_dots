{pkgs,lib,...}:
{
	programs.zsh = {
		enable = true;
		initContent = ''
      eval "$(sheldon source)"
    	'';
  };
  home.packages = with pkgs;[
  	sheldon
  ];
}
