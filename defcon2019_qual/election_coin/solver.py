import requests

token = '41 D3 B5 41 FD 3D 4C 88  B0 CC 19 F7 72 59 01 EC D5 C6 DE 44 6B A5 C5 26  5C 78 64 35 10 55 FB 88 BC 0E'.replace(" ","")
token = token.decode("hex")
r = requests.get('http://localhost:8888/api/v1/election/dc2019/status', headers={"X-Election-Auth": token})
#r = requests.get('http://election_coin.quals2019.oooverflow.io:8888/api/v1/election/dc2019/status',headers={"X-Election-Auth": token})
print(r.request.headers)
print(r.request.body)
print(r.headers)

print("line")
print(r.status_code)
print(r.text)
