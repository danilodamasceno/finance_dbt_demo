select
    c.customer_id,
    c.email,
    c.signup_date,
    c.country,
    u.utm_source,
    u.utm_medium,
    u.utm_campaign,
    u.created as utm_created
from {{ source('analytics','customers') }} c
left join {{ source('analytics','utm_sources') }} u
  on c.customer_id = u.customer_id
