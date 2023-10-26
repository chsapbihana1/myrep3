select
from {{ source('sf_superstores_ds', 'SUPERSTORES') }}
left join {{ source('sf_superstores_region_ds', 'SUPERSTORES') }} using (REGION)
