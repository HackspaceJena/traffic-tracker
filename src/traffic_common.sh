# config
IF=eth0.1
TMaxFile=/etc/traffic_limit
TPerFile=/etc/traffic_consumed
TEphFile=/tmp/traffic_to_be_accounted
TObsFile=/tmp/traffic_observed_since_ifup
BytesPerCent=5368709 # 1 GiB for 2 EUR

# TODO: MaxPerTimeGap=3600
MaxPerTrafficDiff=$((100 * 1024 * 1024))

# gather different traffic counters
TMax=$(cat $TMaxFile 2>/dev/null || echo 0)
TPer=$(cat $TPerFile 2>/dev/null || echo 0)
TEph=$(cat $TEphFile 2>/dev/null || echo 0)
TObs=$(cat $TObsFile 2>/dev/null || echo 0)
