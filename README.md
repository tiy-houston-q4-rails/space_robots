

API_KEY -> TBD

For POST and PUT, must specify:
```
CONTENT-TYPE: application/json
```

endpoints
==========


### Robots

##### `/robots`

```
GET /robots
GET /robots/:id
POST /robots
PUT /robots/:id
DELETE /robots/:id
```

/robots Sample JSON :
```json
{
    "robots": [
        {
            "id": 1,
            "name": "Bender",
            "photo": "http://thefuturebuzz.com/wp-content/uploads/2011/10/bender.jpg"
        },
        {
            "id": 2,
            "name": "Enrique",
            "photo": "http://robohash.org/Nathan.png?size=500x500"
        },
        {
            "id": 3,
            "name": "Bella",
            "photo": "http://robohash.org/Houston.png?size=500x500"
        },
        {
            "id": 4,
            "name": "Adelia",
            "photo": "http://robohash.org/Demetris.png?size=500x500"
        },
        {
            "id": 5,
            "name": "Floyd",
            "photo": "http://robohash.org/Elian.png?size=500x500"
        },
        {
            "id": 6,
            "name": "Stevie",
            "photo": "http://robohash.org/Devan.png?size=500x500"
        }
    ]
}
```

/robots/1 sample json

```
{"robot":{"id":1,"name":"Bender","photo":"http://thefuturebuzz.com/wp-content/uploads/2011/10/bender.jpg"}}
```



PUT /robots/2
```
{"robot":{"name":"YOLO", photo: "http://example.com/yolo.png"}}
```


DELETE /robots/:id

Sample json:
```
{"ok":true}
```
