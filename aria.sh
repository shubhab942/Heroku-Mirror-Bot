export MAX_DOWNLOAD_SPEED=0
tracker_list=$(curl -Ns https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt | awk '$1' | tr '\n' ',')
export MAX_CONCURRENT_DOWNLOADS=4
aria2c --enable-rpc --rpc-listen-all=false --rpc-listen-port 6800 --check-certificate=false\
   --max-connection-per-server=10 --rpc-max-request-size=1024M \
   --bt-tracker=http://1337.abcvg.info:80/announce,http://5rt.tace.ru:60889/announce,http://bt.3kb.xyz:80/announce,http://bt.okmp3.ru:2710/announce,http://milanesitracker.tekcities.com:80/announce,http://open.acgnxtracker.com:80/announce,http://rt.tace.ru:80/announce,http://share.camoe.cn:8080/announce,http://siambit.org:80/announce.php,http://t.nyaatracker.com:80/announce,http://t.overflow.biz:6969/announce,http://torrentsmd.com:8080/announce,http://tr.cili001.com:8070/announce,http://tracker-cdn.moeking.me:2095/announce,http://tracker.bt4g.com:2095/announce,http://tracker.dutchtracking.nl:80/announce,http://tracker.files.fm:6969/announce,http://tracker.loadbt.com:6969/announce,http://tracker.noobsubs.net:80/announce,http://tracker.opentrackr.org:1337/announce,http://tracker.trackerfix.com:80/announce,http://tracker.vraphim.com:6969/announce,http://vps02.net.orel.ru:80/announce,https://1337.abcvg.info:443/announce,https://tp.m-team.cc:443/announce.php,https://tr.steins-gate.moe:2096/announce,https://tracker.coalition.space:443/announce,https://tracker.cyber-hub.net:443/announce,https://tracker.foreverpirates.co:443/announce,https://tracker.imgoingto.icu:443/announce,https://tracker.lilithraws.cf:443/announce,https://tracker.nanoha.org:443/announce,https://tracker.nitrix.me:443/announce,https://tracker.parrotsec.org:443/announce,https://tracker.sloppyta.co:443/announce,https://tracker.tamersunion.org:443/announce,https://tracker6.lelux.fi:443/announce,udp://47.ip-51-68-199.eu:6969/announce,udp://6rt.tace.ru:80/announce,udp://9.rarbg.to:2710/announce,udp://aaa.army:8866/announce,udp://app.icon256.com:8000/announce,udp://blokas.io:6969/announce,udp://bms-hosxp.com:6969/announce,udp://cdn-1.gamecoast.org:6969/announce,udp://code2chicken.nl:6969/announce,udp://daveking.com:6969/announce,udp://discord.heihachi.pw:6969/announce,udp://edu.uifr.ru:6969/announce,udp://engplus.ru:6969/announce,udp://exodus.desync.com:6969/announce,udp://explodie.org:6969/announce,udp://fe.dealclub.de:6969/announce,udp://ipv4.tracker.harry.lu:80/announce,udp://ipv6.tracker.harry.lu:80/announce,udp://johnrosen1.com:6969/announce,udp://ln.mtahost.co:6969/announce,udp://mail.realliferpg.de:6969/announce,udp://movies.zsw.ca:6969/announce,udp://mts.tvbit.co:6969/announce,udp://nagios.tks.sumy.ua:80/announce,udp://open.demonii.com:1337/announce,udp://open.demonii.si:1337/announce,udp://open.stealth.si:80/announce,udp://opentor.org:2710/announce,udp://opentracker.i2p.rocks:6969/announce,udp://p4p.arenabg.ch:1337/announce,udp://peru.subventas.com:53/announce,udp://retracker.hotplug.ru:2710/announce,udp://retracker.lanta-net.ru:2710/announce,udp://sd-161673.dedibox.fr:6969/announce,udp://storage.groupees.com:6969/announce,udp://t2.leech.ie:1337/announce,udp://thetracker.org:80/announce,udp://torrentclub.online:54123/announce,udp://tracker.0x.tf:6969/announce,udp://tracker.altrosky.nl:6969/announce,udp://tracker.beeimg.com:6969/announce,udp://tracker.birkenwald.de:6969/announce,udp://tracker.cyberia.is:6969/announce,udp://tracker.dler.org:6969/announce,udp://tracker.ds.is:6969/announce,udp://tracker.e-utp.net:6969/announce,udp://tracker.internetwarriors.net:1337/announce,udp://tracker.lelux.fi:6969/announce,udp://tracker.moeking.me:6969/announce,udp://tracker.opentrackr.org:1337/announce,udp://tracker.shkinev.me:6969/announce,udp://tracker.sigterm.xyz:6969/announce,udp://tracker.tiny-vps.com:6969/announce,udp://tracker.torrent.eu.org:451/announce,udp://tracker.uw0.xyz:6969/announce,udp://tracker.v6speed.org:6969/announce,udp://tracker.zerobytes.xyz:1337/announce,udp://tracker0.ufibox.com:6969/announce,udp://tracker1.bt.moack.co.kr:80/announce,udp://tracker2.dler.org:80/announce,udp://tracker2.itzmx.com:6961/announce,udp://us-tracker.publictracker.xyz:6969/announce,udp://valakas.rollo.dnsabr.com:2710/announce,udp://vibe.community:6969/announce,udp://www.torrent.eu.org:451/announce \
   --bt-max-peers=0 --seed-time=0.01 --min-split-size=10M \
   --follow-torrent=mem --split=10 \
   --daemon=true --allow-overwrite=true --max-overall-download-limit=$MAX_DOWNLOAD_SPEED \
   --max-overall-upload-limit=1K --max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS