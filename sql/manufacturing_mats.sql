
DROP FUNCTION get_manufacturing_mats(type_name varchar(128));
	
CREATE OR REPLACE FUNCTION get_manufacturing_mats(type_name varchar(128))
  RETURNS integer AS
$BODY$
begin
DROP TABLE IF EXISTS man_cache;
CREATE TEMP TABLE man_cache AS
select 	typ.typename as material, 
	mat.quantity, 
	blu.wastefactor, 
	typ2.typename source
from invtypematerials mat 
inner join invtypes typ on mat.materialtypeid = typ.typeid
inner join invblueprinttypes blu on mat.typeid = blu.producttypeid 
inner join invtypes typ2 on mat.typeid = typ2.typeid
where mat.typeid in (
	select typeid from invtypes where marketgroupid in (
		select marketgroupid from invmarketgroups where parentgroupid in (
			select marketgroupid from invmarketgroups where parentgroupid in (
				select marketgroupid from invmarketgroups where marketgroupname = 'Rigs')
			)
		)
	)
	and typ2.typename = type_name; --'Medium Trimark Armor Pump II'; 
return 1;
end;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION get_invention_mats(integer)
  OWNER TO gourd;


