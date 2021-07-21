import requests

# API URL
url = "http://127.0.0.1:8080/api/users"


def test_fetchinguserdata():
    response = requests.get(url)

    # Validating Status Code
    assert response.status_code == 200
