#!/bin/bash

curl --request "POST" \
     --location "http://localhost:9000/twirp/twirp.example.haberdasher.Haberdasher/MakeHat" \
     --header "Content-Type:application/json" \
     --data '{"inches": 10}'
