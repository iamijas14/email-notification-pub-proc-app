%dw 2.0
output application/json
---

{
	"status": "UP",
    "correlationId": correlationId,
  	"environment": Mule::p('mule.env'),
	"applicationName": Mule::p('app.name') default "N/A",
	"version": "1.0.0",
	"description": "Health check for ABC Travels Publisher Process Application"
}