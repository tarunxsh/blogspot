# URL to ping
URL="https://blog.tarunxsh.xyz/ping/"

# Make a GET request using curl and capture the response
response=$(curl -s -w "\nHTTP_STATUS:%{http_code}" $URL)

# Extract the HTTP body and status code
body=$(echo "$response" | sed -n '/HTTP_STATUS:/!p') # Extract everything except the HTTP_STATUS line
http_status=$(echo "$response" | sed -n 's/.*HTTP_STATUS://p') # Extract the HTTP status code


# Print the HTTP status code
echo "HTTP Status Code: $http_status"
# Print the response body
echo "$body"