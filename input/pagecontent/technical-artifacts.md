<style>
  {% include liquid-templates.css %}
</style>

<p>This page provides a list of the key FHIR artifacts defined as part of this implementation guide.</p>

<br />

{% assign resourceFilter = "CapabilityStatement" %}

{{ "### Capability Statements" }}

{% include artifacts-reusable.liquid %}

{% assign resourceFilter = "StructureDefinition" %}

{{ "### Profiles" }}

{% include artifacts-reusable.liquid %}