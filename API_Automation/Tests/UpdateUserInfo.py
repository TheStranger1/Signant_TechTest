import requests
import json

# API URL
url = "http://127.0.0.1:8080/api/users/John"

# Read Input Json File
file = open('../Data/NewUser.json', 'r')
json_input = file.read()
request_json = json.loads(json_input)

# Make PUT request with Json input body
response = requests.put(url, data=request_json,
                        headers={'Content-Type': 'application/json',
                               'Token':'MzIyOTkxOTIwMTIyNDA5Njg3MjYxMTI2NzM4NDM5MTExMjkzNDM4'})

# Displaying response content
print(response.content)

# Validating Status Code


#The PUT request didn't work as expected.
#I have tested other public API's with the same code and it worked.
#I think there is something in the Development Code needs to be updated.
