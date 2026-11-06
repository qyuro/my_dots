{bitwig-pkgs,pkgs,...}:
{
	environment.systemPackages = with pkgs;[
		(bitwig-pkgs.bitwig-studio6.overrideAttrs (old: {
        	postInstall = (old.postInstall or "") + ''
          		cp ${./bitwig.jar} $out/libexec/bin/bitwig.jar
        	'';
      	}))
	];
}
