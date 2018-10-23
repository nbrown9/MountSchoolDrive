NETNAME=$(eval "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I|grep -w 'SSID'")
SCHOOLNET="SSID: AirOrangeX"

# Comapring the strings directly wont work because NETNAME has a large amount of whitespace in front of it-
# so to fix this use the double brackets and the * to match for substring 
if [[ "$NETNAME" == *"$SCHOOLNET"* ]]; then
    echo "On the network, mounting drive now..."
    $(osascript -e 'tell application "Finder"
		open location "smb://hd.ad.syr.edu/03/d29bd9/Documents"
	end tell')
fi
