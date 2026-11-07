{
	services.zapret-discord-youtube = {
		enable = true;
		configName = "general(ALT)"; 
		gameFilter = "all";
		listGeneral = [ ###добавлние url для работы запрета , тоесть запрет влият на аднные url 
				# "7f965.playfabapi.com"
				# "mtm.rebe.capcom.com"
				# "dzyiry2ohdgp7.cloudfront.net"
				# "d21d59npjlru09.cloudfront.net"
		];
		listExclude = [ ###чтобы запрет не работал на данные сайты 
			"mpsqosprod.notheurope.cloudapp.azure.com"
			"mpsqosprod.northcentralus.cloudapp.azure.com"
			"mpsqosprod.eastus.cloudapp.azure.com"
			"mpsqosprod.eastus2.cloudapp.azure.com"
			"mpsqosprod.centralus.cloudapp.azure.com"
			"mpsqosprod.brazilsouth.cloudapp.azure.com"
			"mpsqosprod.australiaeast.cloudapp.azure.com"
			"mpsqosprod.australiasoutheast.cloudapp.azure.com"
			"mpsqosprod.eastasia.cloudapp.azure.com"
			"mpsqosprod.japanwest.cloudapp.azure.com"
			"mpsqosprod.japaneast.cloudapp.azure.com"
			"mpsqosprod.southeastasia.cloudapp.azure.com"
			"mpsqosprod.southafricanorth.cloudapp.azure.com"
			"mpsqosprod.westeurope.cloudapp.azure.com"
			"mpsqosprod.uaenorth.cloudapp.azure.com"
			"mpsqosprod.westeurope.cloudapp.azure.com"
			"ns1-36.azure-dns.com"
			"hjm.rebe.capcom.com"
			"production-us-central1-capi.sf6.streetfighter.com"
			"production-asia-northeast1-capi.sf6.streetfighter.com"
			"production-southamerica-east1-capi.sf6.streetfighter.com"
			"production-europe-west2-capi.sf6.streetfighter.com"
			"wlt.rebe.capcom.com"
			"storage.googleapis.com"
			"mtm.rebe.capcom.com"
			"dzyiry2ohdgp7.cloudfront.net"
			"d21d59npjlru09.cloudfront.net"
			"7f965.playfabapi.com"
		];
		ipsetAll = [
				# "45.137.148.81"
		];
		ipsetExclude = [
				"45.137.148.81"
		];
	};
}
