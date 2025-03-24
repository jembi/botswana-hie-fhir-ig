Instance: CreateNewPatientFlow
InstanceOf: ExampleScenario
Usage: #definition
* name = "CreateNewPatientFlow"
* status = #active
* experimental = true
* purpose = "Purpose: this serves to demonstrate the performing of medication administration, by using remote / mobile devices to a) Get the planned medication administrations and b) Record the performing of these administrations without a permanent connection to the EHR."
* actor[0].actorId = "Nurse"
* actor[=].type = #person
* actor[=].name = "Nurse"
* actor[=].description = "The Nurse"
* actor[+].actorId = "MAP"
* actor[=].type = #entity
* actor[=].name = "Nurse's Tablet"
* actor[=].description = "The entity that receives the Administration Requests to show the nurse to perform them"
* actor[+].actorId = "OP"
* actor[=].type = #entity
* actor[=].name = "MAR / Scheduler"
* actor[=].description = "The Medication Administration Order Placer"
* actor[+].actorId = "MAC"
* actor[=].type = #entity
* actor[=].name = "MAR / EHR"
* actor[=].description = "The entity that receives the Medication Administration reports"
* instance[0].resourceId = "iherx001"

* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Initial Prescription"
* instance[=].description = "The initial prescription which describes \"medication X, 3 times per day\" - the exact scheduling is not   in the initial prescription (it is left for the care teams to decide on the schedule)."
* instance[+].resourceId = "iherx001.001"

* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 1, morning"
* instance[=].description = "The administration request for day 1, morning"
* instance[+].resourceId = "iherx001.002"

* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 1, lunch"
* instance[=].description = "The administration request for day 1, lunch"
* instance[+].resourceId = "iherx001.003"

* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 1, evening"
* instance[=].description = "The administration request for day 1, evening"
* instance[+].resourceId = "iherx001.004"

* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 2, morning"
* instance[=].description = "The administration request for day 2, morning"
* instance[+].resourceId = "iherx001.005"

* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 2, lunch"
* instance[=].description = "The administration request for day 2, lunch"
* instance[+].resourceId = "iherx001.006"

* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Request for day 2, evening"
* instance[=].description = "The administration request for day 2, evening"
* instance[+].resourceId = "iheadm001a"

* instance[=].resourceType = #MedicationAdministration
* instance[=].name = "Morning meds - taken"
* instance[=].description = "Administration report for day 1, morning: Taken"
* instance[+].resourceId = "iheadm001b"

* instance[=].resourceType = #MedicationAdministration
* instance[=].name = "Morning meds - not taken"
* instance[=].description = "Administration report for day 1, morning: NOT Taken"
* instance[+].resourceId = "iherx001bundle"

* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Bundle of Medication Requests"
* instance[=].description = "All the medication Requests for Day 1"
* instance[=].containedInstance[0].resourceId = "iherx001.001"
* instance[=].containedInstance[+].resourceId = "iherx001.002"
* instance[=].containedInstance[+].resourceId = "iherx001.003"
* instance[=].containedInstance[+].resourceId = "iherx001.004"
* instance[=].containedInstance[+].resourceId = "iherx001.005"
* instance[=].containedInstance[+].resourceId = "iherx001.006"
* instance[+].resourceId = "iheadm002"

* instance[=].resourceType = #MedicationAdministration
* instance[=].name = "Lunch meds - taken"
* instance[=].description = "Administration report for day 1, lunch: Taken"
* instance[=].version[0].versionId = "iheadm002v1"
* instance[=].version[=].description = "Administration - v1"
* instance[=].version[=].description = "Medication just taken"
* instance[=].version[+].versionId = "iheadm002v2"
* instance[=].version[=].description = "Administration - v2"
* instance[=].version[=].description = "Medication rejected"
* instance[+].resourceId = "iherxqry"

* instance[=].resourceType = #SearchParameter
* instance[=].name = "Search query1"
* instance[=].description = "The search administration request for day 1, morning"
* process.title = "Mobile Medication Administration"
* process.description = "This scenario demonstrates the process of getting the relevant medication instructions for a patient visit and reporting the results of administration. The scenario is as follows: After the prescription is issued, the institution schedules each individual administration event in the Medication Administration Record (MAR). When preparing for a visit, the nurse queries the MAR for the scheduled administrations, obtaining a bundle of records. The nurse then performs the care activities and registers the results in the device. Upon synchronization of the device and the institution, the results of administration are uploaded to the EHR, thus updating the MAR."
* process.preConditions = "Medication administration requests are in the EHR / MAR, scheduled for each individual intake."
* process.postConditions = "Medication administration Reports are submitted, EHR is updated."
* process.step[0].operation.number = "1"
* process.step[=].operation.name = "Get today's schedule"
* process.step[=].operation.initiator = "Nurse"
* process.step[=].operation.receiver = "MAP"
* process.step[+].operation.number = "2"
* process.step[=].operation.name = "Query administration orders"
* process.step[=].operation.initiator = "MAP"
* process.step[=].operation.receiver = "OP"
* process.step[=].operation.description = "Query for medication administration orders,\\n- For today's shifts\\n- For today's patients"
* process.step[=].operation.request.resourceId = "iherxqry"
* process.step[=].operation.response.resourceId = "iherx001bundle"
* process.step[=].pause = true
* process.step[+].operation.number = "3"
* process.step[=].operation.name = "Notify (alert)"
* process.step[=].operation.initiator = "MAP"
* process.step[=].operation.receiver = "Nurse"
* process.step[+].operation.number = "4"
* process.step[=].operation.name = "Read orders"
* process.step[=].operation.initiator = "Nurse"
* process.step[=].operation.receiver = "MAP"
* process.step[=].pause = true
* process.step[+].operation.number = "5"
* process.step[=].operation.name = "Ask if patient took meds"
* process.step[=].operation.initiator = "Nurse"
* process.step[=].operation.receiver = "Nurse"
* process.step[+].alternative[0].title = "Patient took meds"
* process.step[=].alternative[=].description = "Invoke if patient took medications"
* process.step[=].alternative[=].step.operation.number = "6a"
* process.step[=].alternative[=].step.operation.name = "Register meds taken"
* process.step[=].alternative[=].step.operation.initiator = "Nurse"
* process.step[=].alternative[=].step.operation.receiver = "MAP"
* process.step[=].alternative[=].step.operation.initiatorActive = true
* process.step[=].alternative[+].title = "No drugs"
* process.step[=].alternative[=].description = "No, patient did not take meds"
* process.step[=].alternative[=].step.operation.number = "6b"
* process.step[=].alternative[=].step.operation.name = "Register meds NOT taken"
* process.step[=].alternative[=].step.operation.initiator = "Nurse"
* process.step[=].alternative[=].step.operation.receiver = "MAP"
* process.step[=].alternative[=].step.operation.initiatorActive = true
* process.step[=].alternative[+].title = "Not clear"
* process.step[=].alternative[=].description = "Unknown whether patient took medications or not"
* process.step[=].pause = true
* process.step[+].operation.number = "7"
* process.step[=].operation.name = "Administer drug"
* process.step[=].operation.initiator = "Nurse"
* process.step[=].operation.receiver = "Nurse"
* process.step[+].operation.number = "8"
* process.step[=].operation.name = "Record administration"
* process.step[=].operation.initiator = "Nurse"
* process.step[=].operation.receiver = "MAP"
* process.step[=].operation.initiatorActive = true
* process.step[=].pause = true
* process.step[+].operation.number = "9"
* process.step[=].operation.name = "Upload administration reports"
* process.step[=].operation.initiator = "Nurse"
* process.step[=].operation.receiver = "MAP"
* process.step[=].operation.initiatorActive = true
* process.step[=].operation.request.resourceId = "iheadm002"
* process.step[=].operation.request.resourceId = "iheadm002v1"
* process.step[=].pause = true
* process.step[+].operation.number = "10"
* process.step[=].operation.name = "Upload administration reports"
* process.step[=].operation.initiator = "MAP"
* process.step[=].operation.receiver = "MAC"
* process.step[=].operation.description = "The nurse's system uploads the administration results to the server"
* process.step[=].operation.request.resourceId = "iheadm001a"