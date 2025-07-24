{{
  config(
    materialized='table',
    alias='MENU2'
  )
}}

SELECT
    *,
    CURRENT_TIMESTAMP AS RUN_DATE
  FROM {{ source('KOYSURMIAH_LOAD_SAMPLE_DATA_FROM_S3', 'MENU') }}
  WHERE MENU_TYPE IN ('Ice Cream', 'BBQ')


/*
WITH source_data AS (
  SELECT
    *,
    CURRENT_TIMESTAMP AS RUN_DATE
  FROM {{ source('KOYSURMIAH_LOAD_SAMPLE_DATA_FROM_S3', 'MENU') }}
  WHERE MENU_TYPE IN ('Ice Cream', 'BBQ')

  {% if is_incremental() %}
    AND updated_at > (SELECT MAX(updated_at) FROM {{ this }})
  {% endif %}
)

SELECT
  *
FROM source_data  */