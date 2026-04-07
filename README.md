# email-notification-pub-proc-app

## 📌 Overview
This application runs on a scheduler and publishes Salesforce contact updates to RabbitMQ.

## 🔧 Responsibilities
- Trigger every 30 minutes
- Fetch updated contacts from System API
- Validate JSON payload
- Publish valid records to RabbitMQ

## ⏰ Scheduler
- Runs every 30 minutes

## 🔄 Flow
1. Scheduler triggers flow
2. Calls System API
3. Filters using LastModifiedDate
4. Validates JSON schema
5. Publishes each record to RabbitMQ

## 🧪 Validation
- JSON Schema Validation
- Invalid records logged

## 📦 Message Structure
- Single contact per message

## ⚠️ Error Handling
- Validation errors → logged
- System errors → propagated

## 🔐 Security
- TLS enabled RabbitMQ connection
- Credentials stored securely

## 📊 Logging
- CorrelationId-based logging
- Error handling with global handler

## 🚀 Deployment
- CloudHub 2.0