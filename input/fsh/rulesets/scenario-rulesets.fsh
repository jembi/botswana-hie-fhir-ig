RuleSet: ScenarioActor(actorId, type, name, description)
* actor[+]
  * actorId = "{actorId}"
  * type = #{type}
  * name = "{name}"
  * description = "{description}"

RuleSet: ScenarioInstance(resourceId, resourceType, name, description)
* instance[+]
  * resourceId = "{resourceId}"
  * resourceType = #{resourceType}
  * name = "{name}"
  * description = "{description}"

RuleSet: ScenarioContainedInstance(resourceId)
* instance[=]
  * containedInstance[+]
    * resourceId = "{resourceId}"

RuleSet: ScenarioProcess(title, preConditions, postConditions)
* process[+]
  * title = "{title}"
  * preConditions = "{preConditions}"
  * postConditions = "{postConditions}"

RuleSet: ScenarioProcessStep(number, name, initiator, receiver, description)
* step[+]
  * operation
    * number = "{number}"
    * name = "{name}"
    * initiator = "{initiator}"
    * receiver = "{receiver}"
    * description = "{description}"