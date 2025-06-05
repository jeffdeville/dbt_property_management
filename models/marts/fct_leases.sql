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
    unit_id,
    property_id,
    rental_application_id,
    leases.created_at

  from
    leases
      inner join rental_applications using (rental_application_id)
      inner join units using (unit_id)
  order by created_at
)


select * from final
