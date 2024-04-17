# test script for uploading to nfty
import requests

requests.post(
    "https://ntfy.sh/martin_alerts",
    data=open("/home/martin/Pictures/emmy.jpg", "rb"),
    headers={
        "Title": "authorized access detected",
        "Priority": "urgent",
        "Tags": "warning,skull",
    },
)
