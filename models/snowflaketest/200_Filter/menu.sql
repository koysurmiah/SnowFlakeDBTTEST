{{ config(materialized='table', alias='MENU2') }}

SELECT *
FROM {{ source('KOYSURMIAH_LOAD_SAMPLE_DATA_FROM_S3', 'MENU') }}