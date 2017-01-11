exec xgraph -brb -geometry 1000X600 -t Existing -x Number_of-Users -y Packet_Delivery-ratio Throughput11.tr Delay11.tr CongestionOccured.tr &
exec xgraph -brb -geometry 1000X600 -t Proposed -x Number_of-Users -y Packet_Delivery-ratio Throughput.tr Delay.tr XOR.tr &
exec xgraph -m -bb -geometry 700X400 -t Efficiency -x Number_of-Request -y Packet_Delivery-ratio Throughput111.tr NetworkCoding1.tr Delay1.tr &
