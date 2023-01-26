{{
    config(
        materialized='table',
        post_hook="{{ insert_resources_from_graph(this, resource_type='nodes', relationships=True) }}"
    )
}}

with dummy_cte as (
    select 1 as foo
) 

select 
    cast(null as {{ dbt.type_string()}}) as resource_id,
    cast(null as {{ dbt.type_string()}}) as direct_parent_id,
    cast(True as boolean) as is_primary_relationship

from dummy_cte
where false