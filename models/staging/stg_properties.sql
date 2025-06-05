select
  id as property_id,
  address,
  city,
  created_at,
  name,
  state,
  type as property_type,
  year_built,
  zip_code

from {{ source('property_management', 'properties') }}
