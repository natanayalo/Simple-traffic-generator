# Simple-traffic-generator
A single bash script iperf.sh that will run on VM_1 and do the following:
  a.Start iperf server on $VM_2, which listens on port $PORT
  b. Start iperf client which sends packages for $DURATION seconds and prints the report every $INTERVAL seconds
    i. iperf’s report is printed on screen
    ii. iperf’s report is saved in file $MY_FILE
  c. Stop iperf server on $VM_2
VM_2 address, PORT, DURATION, INTERVAL, MY_FILE – are all variables
A configuration.yaml file which will provide all the above variables
The yaml file also indicate whether to use TCP or UDP
The bash script parse all the variables and use them accordingly
