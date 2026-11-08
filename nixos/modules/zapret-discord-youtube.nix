{
  services.zapret-discord-youtube = {
    enable = true;
    configName = "general(ALT)";
    gameFilter = "all";
    listGeneral = [
      # ##добавлние url для работы запрета , тоесть запрет влият на аднные url
      "www.instagram.com"
      "www.meta.com"
      "facebook.com"
      "www.facebook.com"
      "static.xx.fbcdn.net"
    ];
    listExclude = [
      # ##чтобы запрет не работал на данные сайты
      "production-us-central1-capi.sf6.streetfighter.com"
      "production-asia-northeast1-capi.sf6.streetfighter.com"
      "production-southamerica-east1-capi.sf6.streetfighter.com"
      "production-europe-west2-capi.sf6.streetfighter.com"
      "production-us-central1-battlehub.sf6.streetfighter.com"
      "production-us-central1-customroom.sf6.streetfighter.com"
      "production-asia-northeast1-battlehub.sf6.streetfighter.com"
      "production-asia-northeast1-customroom.sf6.streetfighter.com"
      "production-southamerica-east1-battlehub.sf6.streetfighter.com"
      "production-southamerica-east1-customroom.sf6.streetfighter.com"
      "production-europe-west2-battlehub.sf6.streetfighter.com"
      "production-europe-west2-customroom.sf6.streetfighter.com"
      "dzyiry2ohdgp7.cloudfront.net"
      "d21d59npjlru09.cloudfront.net"
      "production-us-central1-notify.sf6.streetfighter.com"
      "hjm.rebe.capcom.com"
      "mtm.rebe.capcom.com"
      "mtms.rebe.capcom.com"
      "mmr.rebe.capcom.com"
      "nkm.rebe.capcom.com"
      "wlt.rebe.capcom.com"
      "selector.gs.capcom.com"
      "7f965.playfabapi.com"
      "mpsqosprod.westus.cloudapp.azure.com"
      "mpsqosprod.centralus.cloudapp.azure.com"
      "mpsqosprod.japanwest.cloudapp.azure.com"
      "mpsqosprod.australiasoutheast.cloudapp.azure.com"
      "mpsqosprod.eastasia.cloudapp.azure.com"
      "mpsqosprod.japaneast.cloudapp.azure.com"
      "mpsqosprod.southeastasia.cloudapp.azure.com"
      "mpsqosprod.southafricanorth.cloudapp.azure.com"
      "mpsqosprod.uaenorth.cloudapp.azure.com"
      "mpsqosprod.eastus.cloudapp.azure.com"
      "mpsqosprod.westeurope.cloudapp.azure.com"
      "mpsqosprod.southcentralus.cloudapp.azure.com"
      "mpsqosprod.northeurope.cloudapp.azure.com"
      "mpsqosprod.northcentralus.cloudapp.azure.com"
      "mpsqosprod.eastus2.cloudapp.azure.com"
      "mpsqosprod.brazilsouth.cloudapp.azure.com"
      "mpsqosprod.australiaeast.cloudapp.azure.com"
      "storage.googleapis.com"
      ###ЭТИХ НЕ БЫЛО В ФАЙЛЕ
      "ns1-36.azure-dns.com"
    ];
    ipsetAll = [
      # "45.137.148.81"
    ];
    ipsetExclude = [
      "45.137.148.81"
    ];
  };
}
