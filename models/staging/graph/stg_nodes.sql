{{
    config(
        materialized='table',
        post_hook="{{ insert_resources_from_graph(this, resource_type='nodes') }}"
    )
}}

{% if execute %}
    {{ check_model_is_table(model) }}
{% endif %}

/* Bigquery won't let us `where` without `from` so we use this workaround */
with dummy_cte as (
    select 1 as foo
)

select 


    cast(null as VARCHAR(6000)) as unique_id,
    cast(null as VARCHAR(6000)) as name,
    cast(null as VARCHAR(6000)) as resource_type,
    cast(null as VARCHAR(6000)) as file_path,
    cast(True as boolean) as is_enabled,
    cast(null as VARCHAR(6000)) as materialized,
    cast(null as VARCHAR(6000)) as on_schema_change,
    cast(null as VARCHAR(6000)) as database,
    cast(null as VARCHAR(6000)) as schema,
    cast(null as VARCHAR(6000)) as package_name,
    cast(null as VARCHAR(6000)) as alias,
    cast(True as boolean) as is_described,
    cast(null as VARCHAR(6000)) as column_name,
    cast(null as VARCHAR(6000)) as meta,
    cast(null as VARCHAR(6000)) as hard_coded_references,
    cast(null as VARCHAR(6000)) as macro_dependencies,
    cast(True as boolean) as is_generic_test,
    cast(True as boolean) as is_excluded


from dummy_cte
where false 