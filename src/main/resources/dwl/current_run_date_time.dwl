%dw 2.0
output application/json
---
(now() as DateTime >> Mule::p('timezone')) as String {format: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"}