RuleSet: Slice(item, discriminatorType, discriminatorPath, rule, description, ordered)
* {item} 
  * ^slicing.discriminator[+].type = #{discriminatorType}
  * ^slicing.discriminator[=].path = "{discriminatorPath}"
  * ^slicing.rules = #{rule}
  * ^slicing.description = "{description}"
  * ^slicing.ordered = {ordered}

RuleSet: ExampleTransactionalEntry(resourceID, resourceType, entrySLice)
* entry[{entrySLice}][+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[{entrySLice}][=].resource = {resourceID}
* entry[{entrySLice}][=].request.method = #PUT
* entry[{entrySLice}][=].request.url = "{resourceType}/{resourceID}"

RuleSet: ExampleTransactionalEntryWithConditionalCreate(resourceID, resourceType, parameters, entrySLice)
* entry[{entrySLice}][+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[{entrySLice}][=].resource = {resourceID}
* entry[{entrySLice}][=].request.method = #PUT
* entry[{entrySLice}][=].request.url = "{resourceType}/{resourceID}"
* entry[{entrySLice}][=].request.ifNoneExist = "{parameters}"

RuleSet: ExampleTransactionalEntryWithConditionalUpdate(resourceID, resourceType, parameters, entrySLice)
* entry[{entrySLice}][+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[{entrySLice}][=].resource = {resourceID}
* entry[{entrySLice}][=].request.method = #PUT
* entry[{entrySLice}][=].request.url = "{parameters}"

RuleSet: ExampleTransactionalEntryWithAutoIDGenerate(resourceID, resourceType, entrySLice)
* entry[{entrySLice}][+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[{entrySLice}][=].resource = {resourceID}
* entry[{entrySLice}][=].request.method = #POST
* entry[{entrySLice}][=].request.url = "{resourceType}"

RuleSet: BundleEntry(resourceID, entrySLice)
* entry[{entrySLice}]
  * resource 1..
  * resource only {resourceID}