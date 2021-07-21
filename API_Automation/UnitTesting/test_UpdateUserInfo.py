import requests
import json

# API URL
url = "http://127.0.0.1:8080/api/users/John"

# Read Input Json File
file = open('../Data/NewUser.json', 'r')
json_input = file.read()
request_json = json.loads(json_input)

def test_UpdateUserInfo():
    response = requests.put(url, data=request_json,
                        headers={'Content-Type': 'application/json',
                               'Token':'MzIyOTkxOTIwMTIyNDA5Njg3MjYxMTI2NzM4NDM5MTExMjkzNDM4'})
    assert response.status_code == 200



