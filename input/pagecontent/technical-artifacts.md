<style>
  {% include liquid-templates.css %}
</style>

<p>This page provides a list of the key FHIR artifacts defined as part of this implementation guide.</p>

<br />

{% assign resourcesForListing =
"
Capability Statements,CapabilityStatement~
Profiles and Extensions,StructureDefinition" | split: "~" %}

{% assign resourcesForListingLimit = resourcesForListing.size | minus: 1 %}

{% for i in (0..resourcesForListingLimit) %}
  {% assign data = resourcesForListing[i] | split: ',' %}
  {% assign resourceFilterValue = data[1] %}

{{  "### " | append: data[0] | strip_newlines }}

  {% include artifacts-reusable.liquid resourceFilter=resourceFilterValue %}

  {% if i == resourcesForListingLimit %}
    {% break %}
  {% endif %}
{% endfor %}