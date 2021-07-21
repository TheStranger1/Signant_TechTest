import requests

# API URL
url = "http://127.0.0.1:8080/api/users/John"


def test_reviewingusers():
    response = requests.get(url,
                            headers={'Content-Type': 'application/json',
                                     'Token': 'MzIyOTkxOTIwMTIyNDA5Njg3MjYxMTI2NzM4NDM5MTExMjkzNDM4'})


    assert response.status_code == 200
