USE DATABASE psma_geocoded_national_address_data_gnaf;

USE SCHEMA gnaf;

DESC VIEW address_view;

SELECT  TOP 1000 * 
FROM    address_view 
WHERE   street_name = 'DAVALLIA' and number_first = 37;


SELECT  address_detail_pid
        , count(1) as cnt
FROM    address_view
group by address_detail_pid
HAVING count(1) > 1;

--address_id = '12345'

