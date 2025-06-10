with properties as (
  select * from {{ ref('stg_properties')}}
),
units as (
  select * from {{ ref('stg_units')}}
),


property_units as (
  select
    property_id,
    count(unit_id) as num_units,
    sum(square_feet) as total_square_feet
    -- sum(rent) as total_potential_revenue
  from
    properties
      inner join units using (property_id)
  group by property_id
),
final as (
  select
    property_id,
    name,
    num_units,
    total_square_feet
    -- total_potential_revenue
  from
    properties
      inner join property_units using (property_id)
)

select * from final
