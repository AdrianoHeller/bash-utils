#!/usr/bin/env bash

inet_list=$(ifconfig)

matched=("lo" "eth")

if [[ "${#matched[@]}" -le 2 ]]
then
  for inet in "${inet_list[@]}";do
    case $inet in
    lo|lo0) echo "loopback: $inet"
    ;;
    eth|eth0) echo "ethernet: $inet"
    ;;
    *);;
    esac
  done
else
  echo "you must provide a network type to filter input"
fi
