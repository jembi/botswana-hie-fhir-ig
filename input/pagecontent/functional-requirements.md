<style>
  {% include custom.css %}
</style>

Functional requirements describe the capabilities the system must have in order to meet the end-users’ needs and achieve tasks within the business process.

<br />

{% assign requirementsTypeFilter = "functional" %}
{% assign showRequirementsHeading = true %}
{% assign showRequirementsActors = true %}

{% include fragment-requirements.liquid %}