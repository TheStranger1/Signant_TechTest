import requests

# API URL
url = "http://127.0.0.1:8080/api/users"

# Sending GET Requests
response = requests.get(url)

# Displaying response content
print(response.content)


# Validating Status Code
assert response.status_code == 200

# Fetching Response Header
print(response.headers)



# Fetching Response Header Values
print(response.headers.get('Content-Type'))
print(response.headers.get('Content-Length'))
print(response.headers.get('Server'))
print(response.headers.get('Date'))

# Fetching Cookies
print(response.cookies)

# Fetching Encoding
print(response.encoding)

# Elapsed time
print(response.elapsed)
