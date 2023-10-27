select *
from {{ source('conn_to_superstore', 'superstore') }}

