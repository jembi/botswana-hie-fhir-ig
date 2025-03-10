RuleSet: Slice(item, definition, discriminatorType, discriminatorPath, rule, description, ordered)
* {item} 
  * ^definition = "{definition}"
  * ^slicing.discriminator[+].type = #{discriminatorType}
  * ^slicing.discriminator[=].path = "{discriminatorPath}"
  * ^slicing.rules = #{rule}
  * ^slicing.description = "{description}"
  * ^slicing.ordered = {ordered}

RuleSet: ExampleTransactionalEntry(resourceID, resourceType)
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[=].resource = {resourceID}
* entry[=].request.method = #PUT
* entry[=].request.url = "{resourceType}/{resourceID}"

RuleSet: ExampleTransactionalEntryWithConditionalCreate(resourceID, resourceType, parameters)
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[=].resource = {resourceID}
* entry[=].request.method = #PUT
* entry[=].request.url = "{resourceType}/{resourceID}"
* entry[=].request.ifNoneExist = "{parameters}"

RuleSet: ExampleTransactionalEntryWithConditionalUpdate(resourceID, resourceType, parameters)
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[=].resource = {resourceID}
* entry[=].request.method = #PUT
* entry[=].request.url = "{parameters}"

RuleSet: ExampleTransactionalEntryWithAutoIDGenerate(resourceID, resourceType)
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[=].resource = {resourceID}
* entry[=].request.method = #POST
* entry[=].request.url = "{resourceType}"