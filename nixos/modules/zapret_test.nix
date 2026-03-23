{
  services.zapret = {
    enable = true;
    params = [
        # Фильтр для UDP 443 (QUIC) - основной список
        "--filter-udp=443"
        "--dpi-desync=fake"
        "--dpi-desync-repeats=11"
        "--new"
        
        # Фильтр для UDP Discord
        "--filter-udp=19294-19344,50000-50100"
        "--filter-l7=discord,stun"
        "--dpi-desync=fake"
        "--dpi-desync-repeats=6"
        "--new"
        
        # Фильтр для TCP 2053,2083,2087,2096,8443 (Discord media)
        "--filter-tcp=2053,2083,2087,2096,8443"
        "--dpi-desync=fake,multisplit"
        "--dpi-desync-split-seqovl=681"
        "--dpi-desync-split-pos=1"
        "--dpi-desync-fooling=ts"
        "--dpi-desync-repeats=8"
        "--new"
        
        # Фильтр для TCP 443 (Google)
        "--filter-tcp=443"
        "--ip-id=zero"
        "--dpi-desync=fake,multisplit"
        "--dpi-desync-split-seqovl=681"
        "--dpi-desync-split-pos=1"
        "--dpi-desync-fooling=ts"
        "--dpi-desync-repeats=8"
        "--new"
        
        # Фильтр для TCP 80,443 (основной список)
        "--filter-tcp=80,443"
        "--dpi-desync=fake,multisplit"
        "--dpi-desync-split-seqovl=664"
        "--dpi-desync-split-pos=1"
        "--dpi-desync-fooling=ts"
        "--dpi-desync-repeats=8"
        "--new"
        
        # Фильтр для всех UDP 443 (по ipset)
        "--filter-udp=443"
        "--dpi-desync=fake"
        "--dpi-desync-repeats=11"
        "--new"
        
        # Фильтр для всех TCP 80,443,8443 (по ipset)
        "--filter-tcp=80,443,8443"
        "--dpi-desync=fake,multisplit"
        "--dpi-desync-split-seqovl=664"
        "--dpi-desync-split-pos=1"
        "--dpi-desync-fooling=ts"
        "--dpi-desync-repeats=8"
        "--new"
        
        # Фильтр для игрового TCP трафика
        "--filter-tcp=27015-27030,27036,4380"
        "--dpi-desync=fake,multisplit"
        "--dpi-desync-any-protocol=1"
        "--dpi-desync-cutoff=n4"
        "--dpi-desync-split-seqovl=664"
        "--dpi-desync-split-pos=1"
        "--dpi-desync-fooling=ts"
        "--dpi-desync-repeats=8"
        "--new"
        
        # Фильтр для игрового UDP трафика
        "--filter-udp=27015-27030,27036,4380"
        "--dpi-desync=fake"
        "--dpi-desync-repeats=10"
        "--dpi-desync-any-protocol=1"
        "--dpi-desync-cutoff=n4"
    ];
    
    # Основной whitelist (hostlist) - сайты которые нужно обрабатывать
    whitelist = [
        "discord.com"
        "discordapp.com"
        "discord.gg"
        "discord.media"
        "discordstatus.com"
        "discord-activities.com"
        "discordactivities.com"
        "discordapp.net"
        "discordcdn.com"
        "discordmerch.com"
        "discordpartygames.com"
        "discordsays.com"
        "discordsez.com"
        "google.com"
        "youtube.com"
        "youtu.be"
        "ytimg.com"
        "googlevideo.com"
        "ggpht.com"
        "googleusercontent.com"
        "gvt1.com"
        "twitch.tv"
        "ttvnw.net"
        "live-video.net"
        "cloudflarestream.com"
        "cloudflaretest.com"
        "mail.ru"
        "citilink.ru"
        "yandex.ru"
        "yandex.com"
        "yandex.kz"
        "nvidia.com"
        "donationalerts.com"
        "vk.com"
        "mts.ru"
        "multimc.org"
        "ya.ru"
        "dns-shop.ru"
        "habr.com"
        "3dnews.ru"
        "sberbank.ru"
        "ozon.ru"
        "wildberries.ru"
        "microsoft.com"
        "microsoftonline.com"
        "live.com"
        "minecraft.net"
        "xboxlive.com"
        "akamaitechnologies.com"
        "msi.com"
        "2ip.ru"
        "boosty.to"
        "tanki.su"
        "lesta.ru"
        "korabli.su"
        "tanksblitz.ru"
        "reg.ru"
        "wiki.nixos.org"
        "frankerfacez.com"
        "ffzap.com"
        "betterttv.net"
        "7tv.app"
        "7tv.io"
        "localizeapi.com"
        "pusher.com"
        "discord.gift"
        "discord.store"
    ];
    
    # Blacklist - сайты которые нужно исключить из обработки
    #blacklist = [
    #    "example.com"
    #];
  };
}
