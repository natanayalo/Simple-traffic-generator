vm_2="$(awk '/vm/{print $2}' configuration.yaml)"
udp="$(awk '/udp/{print $2}' configuration.yaml)"
port="$(awk '/port/{print $2}' configuration.yaml)"
server_duration="$(awk '/server_duration/{print $2}' configuration.yaml)"
client_duration="$(awk '/client_duration/{print $2}' configuration.yaml)"
interval="$(awk '/interval/{print $2}' configuration.yaml)"
my_file="$(awk '/my_file/{print $2}' configuration.yaml)"

ssh root@$vm_2 iperf -s $udp -p $port -t $server_duration&
sleep 1

iperf -c $vm_2 $udp -t $client_duration -i $interval | tee $my_file

sleep $client_duration
ssh root@$vm_2 pkill iperf

