######## Fetch lost rows between current table and backup #####################
SELECT * 
FROM backup_characters.table
LEFT JOIN orginal.table
ON backup.table.uniquekey = orginal.table.uniquekey
WHERE orginal.table.uniquekey IS NULL;

/* example - lost heirlooms
-- INSERT backup_characters.temp_character_inventory
SELECT * 
FROM backup_characters.character_inventory
LEFT JOIN characters.character_inventory
ON backup_characters.character_inventory.item = characters.character_inventory.item
WHERE characters.character_inventory.item IS NULL
AND backup_characters.character_inventory.item_template IN
(42944,42943,42950,48677,42946,42948,42947,42992,42951,48683,48685,42949,48687,42984,48718,42952,48689,42991,42985,48691,42945,48716);
*/

######## Fetch duplicates  #####################################################
SELECT column1, column2
COUNT(*) AS duplicates
FROM table
GROUP BY column1, column2
HAVING ( COUNT(*) > 1 );

/* example - duplicate auras
SELECT 
COUNT(*) AS duplicates, guid,spell,effect_index
FROM pet_aura
GROUP BY guid,spell,effect_index
HAVING ( COUNT(*) > 1 );
*/
