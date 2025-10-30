{% macro margin_percent(revenue, purchase_cost, decimals=2) %}
    -- Calculate margin percent safely and round to the desired decimals
    ROUND(
        SAFE_DIVIDE( ({{ revenue }} - {{ purchase_cost }}), {{ revenue }} ) * 100,
        {{ decimals }}
    )
{% endmacro %}