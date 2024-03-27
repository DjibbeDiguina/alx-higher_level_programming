#!/bin/bash

# Check if URL is provided as argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send request to the URL and store the response in a temporary file
response=$(mktemp)
curl -s -o "$response" "$1"

# Get the size of the response body in bytes
size=$(wc -c < "$response")

# Display the size of the response body
echo "$size"

# Clean up temporary file
rm "$response"

