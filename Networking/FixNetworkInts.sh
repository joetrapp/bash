echo "Which adapter?"

ifconfig

read netint

ifdown $netint && ip addr flush $netint && ifup $netint