{pkgs,unstable,...}:
{
	programs.dwl = {
		enable = true;
		package = unstable.dwl;
	};
}
