select
  rent
from {{ ref('stg_units') }}
where rent <= 0
