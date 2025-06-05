select
  id as unit_id,
  property_id,
  address_1,
  address_2,
  city,
  state,
  zip_code,
  bathrooms,
  bedrooms,
  square_feet,
  rent,
  status,
  created_at,
  uploaded_at
from {{ source('property_management', 'units') }}
