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

/*

    cast(null as {{ dbt.type_string() }}) as unique_id,
    cast(null as {{ dbt.type_string() }}) as name,
    cast(null as {{ dbt.type_string() }}) as resource_type,
    cast(null as {{ dbt.type_string() }}) as file_path,
    cast(True as boolean) as is_enabled,
    cast(null as {{ dbt.type_string() }}) as materialized,
    cast(null as {{ dbt.type_string() }}) as on_schema_change,
    cast(null as {{ dbt.type_string() }}) as model_group,
    cast(null as {{ dbt.type_string() }}) as access,
    cast(null as {{ dbt.type_string() }}) as latest_version,
    cast(True as boolean) as is_contract_enforced,
    cast(0 as {{ dbt.type_int() }}) as total_defined_columns,
    cast(0 as {{ dbt.type_int() }}) as total_described_columns,
    cast(null as {{ dbt.type_string() }}) as database,
    cast(null as {{ dbt.type_string() }}) as schema,
    cast(null as {{ dbt.type_string() }}) as package_name,
    cast(null as {{ dbt.type_string() }}) as alias,
    cast(True as boolean) as is_described,
    cast(null as {{ dbt.type_string() }}) as column_name,
    cast(null as {{ dbt.type_string() }}) as meta,
    cast(null as {{ dbt.type_string() }}) as hard_coded_references,
    cast(null as {{ dbt.type_string() }}) as macro_dependencies,
    cast(True as boolean) as is_generic_test,
    cast(True as boolean) as is_excluded

*/


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