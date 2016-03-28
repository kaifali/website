# API Documentation
* [KaifaLi.API.ServiceController](#kaifaliapiservicecontroller)
  * [show](#kaifaliapiservicecontrollershow)

## KaifaLi.API.ServiceController
### KaifaLi.API.ServiceController.show
#### get a service info by keyword
##### Request
* __Method:__ GET
* __Path:__ /api/services/foo
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: dj18ua9u1pl9p3ifnuorir8icsru3pj0
```
* __Response body:__
```json
{
  "url": "http://example.com",
  "name": "Foo",
  "keywords": [
    "foo",
    "bar"
  ]
}
```

