from time import time
import requests

json_data = {
    "destinations": [
        {"name": "destination1", "param": "param1"},
        {"name": "destination2", "param": "param2"},
        {"name": "destination3", "param": "param3"}
    ]
}

start_time = time()
r = requests.post('http://127.0.0.1:8000/multi_destination', json=json_data, timeout=7)
end_time = time()

print('Output:')
print(r.text)

print('HTTP response time:', r.elapsed.total_seconds())
print('Actually elapsed time:', end_time - start_time)
