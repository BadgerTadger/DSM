--declare @show_ID uniqueidentifier = '37BFADE5-A7D6-4155-918F-31F80D77446E'

  select distinct PostalName, Address
  --  select * 
  from vwCatalogueList
  where show_id = '5BDD261C-B420-4830-9646-CF8C8365B1C6'
  and send_running_order = 1
  --order by Ring_No, Dog_KC_Name, Class_No
