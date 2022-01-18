echo "starting"
if [ $(pidof com.tencent.ig) ]; then
awk '/^com.tencent.ig/ {print $2}' /data/system/packages.list > /data/media/0/uidinf
UID=$(cat /data/media/0/uidinf)

iptables -A OUTPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null
iptables -A INPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null

elif [ $(pidof com.pubg.imobile) ]; then
awk '/^com.pubg.imobile/ {print $2}' /data/system/packages.list > /data/media/0/uidinf
UID=$(cat /data/media/0/uidinf)

iptables -A OUTPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null
iptables -A INPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null

elif [ $(pidof com.pubg.krmobile) ]; then
awk '/^com.pubg.krmobile/ {print $2}' /data/system/packages.list > /data/media/0/uidinf
UID=$(cat /data/media/0/uidinf)

iptables -A OUTPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null
iptables -A INPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null

elif [ $(pidof com.rekoo.pubgm) ]; then
awk '/^com.rekoo.pubgm/ {print $2}' /data/system/packages.list > /data/media/0/uidinf
UID=$(cat /data/media/0/uidinf)

iptables -A OUTPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null
iptables -A INPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null


elif [ $(pidof com.vng.pubgmobile) ]; then
awk '/^com.vng.pubgmobile/ {print $2}' /data/system/packages.list > /data/media/0/uidinf
UID=$(cat /data/media/0/uidinf)

iptables -A OUTPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null
iptables -A INPUT -m owner --uid-owner $UID -p tcp -j DROP &> /dev/null

else
echo "No Process Running"
fi