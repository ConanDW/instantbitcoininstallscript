#!/bin/bash
echo "Now, please enter the previously setup domain name. Ex: btcpay.bitcoin1776.org"
read btcpayhost
sudo su - <<EOF #Creates a root shell and runs it in that.
mkdir btcpayserver
alias btcpayserver="cd /btcpayserver"
cd btcpayserver
git clone https://github.com/btcpayserver/btcpayserver-docker
alias btcpayserver-docker="cd /btcpayserver1/btcpayserver-docker"
cd btcpayserver-docker
export BTCPAY_HOST="$btcpayhost"
export NBITCOIN_NETWORK="mainnet"
export BTCPAYGEN_CRYPTO1="btc"
export BTCPAYGEN_REVERSEPROXY="nginx" #Required exports by btcpay
export BTCPAYGEN_LIGHTNING="lnd"
export BTCPAYGEN_ADDITIONAL_FRAGMENTS="opt-save-storage-xs;opt-save-memory"
echo "When you have the ability to type in the terminal again type exit"
echo "Then go to $btcpayhost to check if everything is syncing /n if there are any issues with the install please contact support"
. ./btcpay-setup.sh -i
EOF
#Copyright 2020 Instant Bitcoin, made with <3 by Cameron Day
