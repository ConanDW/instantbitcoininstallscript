#!/bin/bash
mkdir btcpayserver
alias btcpayserver="cd /btcpayserver"
btcpayserver
git clone https://github.com/btcpayserver/btcpayserver-docker
alias btcpayserver-docker="cd /btcpayserver1/btcpayserver-docker"
echo "Now, please enter the previously setup domain name. EX: 'btcpay.bitcoin1776.org'"
read btcpayhost
export BTCPAY_HOST="$btcpayhost"
echo "When you have the ability to type in the terminal again type exit"
echo "Then go to btcpay.yourdomain.yourdomainsending to check if everything is syncing
/n
if there is any issues contact support"
                                            
