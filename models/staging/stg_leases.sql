SELECT
  completed,
  created_at,
  end_date,
  id as lease_id,
  rental_application_id,
  start_date,
  unit_id,
  uploaded_at
from {{ source('property_management', 'leases') }}
