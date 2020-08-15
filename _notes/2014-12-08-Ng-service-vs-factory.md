---
title: "Ng service vs factory"
date: "2014-12-08"
---

### Factory

factory(name, providerFunction) returns a Function for creating new instance of the service

### Service

service(name, constructor) returns a Constructor function that will be instantiated, or say, a class constructor.

### Common

factory(name, providerFunction) and service(name, constructor) are both helper method to register a provider in DI. These two provider definition functions, along with others like value(name, providerFunction), will be used by the DI to provide service, class, value, etc( by calling the $get method on provider).
