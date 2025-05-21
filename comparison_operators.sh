#!/bin/bash

var="8dm7KsjU28B7v621Jls"
value="ERmFRMVZ0U2paTlJYTkxDZz09Cg"

for i in {1..40}
do
    var=$(echo $var | base64)
		
	if [[ "${#var}" -gt 113450 && "$var" == *"$value"* ]]; then
        echo -e "${var: -20}" | tail -c 20

    else
        echo "Condições não atendidas no loop $i."
    fi
done