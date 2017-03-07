#!/bin/bash
filename="$1"
params=""
while read -r line
do
  IFS='=' read -r -a item <<< "$line"
  params="$params--${item[0]} ${item[1]} "
done < "$filename"

echo "Running command with ./monero-wallet-rpc $params"
./monero-wallet-rpc $params
