#! /bin/bash

curl --request GET \
     --url https://openapiv1.coinstats.app/coins \
     --header 'X-API-KEY: HdnLuYya8bEBfpsbARazVFi/IvVAlK4a8t4G9R8hgG4=' \
     --header 'accept: application/json' > /home/pha/project/clone_c6/Bitcoinprice.txt

grep -oE "\"price\"\s*:\s*[0-9]*?\.[0-9]*" "/home/pha/project/clone_c6/Bitcoinprice.txt"
