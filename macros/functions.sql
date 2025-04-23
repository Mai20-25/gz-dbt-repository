{% macro margin_percent(revenue, purchase_cost, round_to=2) %}
    ROUND(SAFE_DIVIDE({{ revenue }} - {{ purchase_cost }}, {{ revenue }}), {{ round_to }})
{% endmacro %}
