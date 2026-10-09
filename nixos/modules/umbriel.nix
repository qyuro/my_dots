{config,pkgs,inputs,unstable,...}:
{
	imports = [
    inputs.umbriel.nixosModules.default
  ];
	programs.umbriel = {
		enable = true;
		# package = unstable.umbriel;
		# portalPackage = unstable.xdg-desktop-portal-umbriel;
	};
}
