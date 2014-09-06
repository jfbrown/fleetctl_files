#!/bin/bash

case "$1" in
  'unload')
    case "$2" in
      'all')
        fleetctl unload nginx@*.service nginx-discovery@*.service
        ;;
    esac
    ;;
  *)
    echo 'Usage: ./fleet.sh <unload> <all>'
    ;;
esac
