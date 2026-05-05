{{ config(materialized='table') }}

with colors as (

    select 1 as position, 'red'    as name, '#FF0000' as hex
    union all select 2, 'orange', '#FF7F00'
    union all select 3, 'yellow', '#FFFF00'
    union all select 4, 'green',  '#00FF00'
    union all select 5, 'blue',   '#0000FF'
    union all select 6, 'indigo', '#4B0082'
    union all select 7, 'violet', '#8B00FF'

)

select *
from colors
order by position
