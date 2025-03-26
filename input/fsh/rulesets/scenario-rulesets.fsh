RuleSet: ScenarioActor(actorId, type, name, description)
* actor[+]
  * key = "{actorId}"
  * type = #{type}
  * title = "{name}"
  * description = "{description}"

RuleSet: ScenarioInstance(resourceId, resourceType, name, description)
* instance[+]
  * key = "{resourceId}"
  * structureType = http://hl7.org/fhir/fhir-types#{resourceType}
  * title = "{name}"
  * description = "{description}"

RuleSet: ScenarioContainedInstance(resourceId)
* instance[=]
  * containedInstance[+]
    * instanceReference = "{resourceId}"

RuleSet: ScenarioProcess(title, preConditions, postConditions)
* process[+]
  * title = "{title}"
  * preConditions = "{preConditions}"
  * postConditions = "{postConditions}"

RuleSet: ScenarioProcessStep(number, name, initiator, receiver, description)
* step[+]
  * number = "{number}"
  * operation
    * title = "{name}"
    * initiator = "{initiator}"
    * receiver = "{receiver}"
    * description = "{description}"

RuleSet: ScenarioProcessStepWithAlternateStep(number, name, initiator, receiver, description, alternateTitle, alternateDescription)
* alternative[+]
  * title = "{alternateTitle}"
  * description = "{alternateDescription}"
  * step[+]
    * number = "{number}"
    * operation
      * title = "{name}"
      * initiator = "{initiator}"
      * receiver = "{receiver}"
      * description = "{description}"