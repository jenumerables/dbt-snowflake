{% macro no_nulls_in_columns(model)%}
    SELECT * FROM {{ model }} WHERE
    {% for col in adapter.get_colums_in_relation(model) -%}
        {{ col.column }} IS NULL OR 
    {% endfor %}
    FALSE
{% endmacro %}