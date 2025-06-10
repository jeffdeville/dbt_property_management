with leases as (
  select * from {{ref('stg_leases')}}
),
rental_applications as (
  select * from {{ref('stg_rental_applications')}}
),
units as (
  select * from {{ref('stg_units')}}
),
final as (
  select
    lease_id,
    -- property_id,
    unit_id,
    rental_application_id
  from
    leases
      inner join rental_applications using (rental_application_id)
      inner join units using (unit_id)
)


select * from final
