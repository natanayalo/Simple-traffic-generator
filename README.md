# Simple-traffic-generator
**1. iperf script:**
  A single bash script iperf.sh that run on VM_1 and do the following:
    a. Start iperf server on $VM_2, which listens on port $PORT
    b. Start iperf client which sends packages for $DURATION seconds and prints the report every $INTERVAL seconds
     i. iperf’s report is printed on screen
     ii. iperf’s report is saved in file $MY_FILE
    c. Stop iperf server on $VM_2
  VM_2 address, PORT, DURATION, INTERVAL, MY_FILE – are all variables
  A configuration.yaml file which will provide all the above variables
  The yaml file also indicate whether to use TCP or UDP
  The bash script parse all the variables and use them accordingly

**2. ctf script:**
    A single bash script ctf.sh that will detect the data breach.
    And a bash script start_ctf.sh that run for starting the ctf.sh script
    Once a breach is detected, the current date and time will be written to /home/cloud/ctf.info
    as follows: date > /home/cloud/ctf.info
    It's assumed that the attacker will connect to the host via the internet, and that a data is stolen, if at least 1000
    Kbits of information are being sent to the internet, for at least 10 seconds.
