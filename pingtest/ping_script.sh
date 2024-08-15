#!/bin/bash

# Start Nginx in the foreground
nginx -g "daemon off;" &

# Infinite loop to continuously ping and update the HTML file
while true; do
	  # Run ping command and capture the output
	    ping -c 2 8.8.8.8 >> /usr/share/nginx/html/index.html && sleep 5

	      # Create or update the index.html file with the ping output
#	        echo "<html><head><title>Ping Result</title></head><body>$ping_output</body></html>" > /usr/share/nginx/html/index.html

		  # Sleep for a few seconds before the next ping
#		    sleep 5
	    done
