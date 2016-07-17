#!/bin/bash

IP=$(curl http://ipecho.net/plain)
#DATE=$(date +"%m/%d/%y")

#echo "Public IP Address: " $IP

cat > aws.json << EOF

{
  "Comment": "Modifying existing MX record for the zone.",
  "Changes": [
    {
    "Action": "UPSERT",
    "ResourceRecordSet": {
        "Name": "MODIFY.YOUR.DOM.",
        "Type": "A",
        "TTL": 300,
        "ResourceRecords": [
            {
EOF
echo "                \"Value\": \"$IP\"" >> aws.json
echo "            }" >> aws.json
echo "        ]" >> aws.json
echo "      }" >> aws.json
echo "    }" >> aws.json
echo "  ]" >> aws.json
echo "}" >> aws.json

aws route53 change-resource-record-sets --hosted-zone-id  HOSTEDZONEID --change-batch file://aws.json
