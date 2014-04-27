-- Function: get_invention_mats(integer)

DROP FUNCTION get_invention_mats(integer);
--DROP TABLE inv_cache;	
CREATE OR REPLACE FUNCTION get_invention_mats(type_id integer)
  RETURNS integer AS
$BODY$
begin
DROP TABLE IF EXISTS inv_cache;
CREATE TEMP TABLE inv_cache AS
select	typ2.typename as typename_mats, 
	typ.typename as typename_source, 
	req.quantity, 
	req.damageperjob, 
	req.recycle
from 	ramtyperequirements req
inner join 	invtypes typ on req.typeid = typ.typeid
inner join 	invmarketgroups img on typ.marketgroupid = img.marketgroupid 
inner join 	ramactivities act on act.activityid = req.activityid
inner join 	invtypes typ2 on typ2.typeid = req.requiredtypeid
where 	img.parentgroupid in (
	select marketgroupid from invmarketgroups where parentgroupid in (
		select marketgroupid from invmarketgroups where parentgroupid in (
			select marketgroupid from invmarketgroups where marketgroupname = 'Blueprints')
				and marketgroupname = 'Ship Modifications'
			)
		and marketgroupname like '% Rig%'
		)
	and typ.typeid = type_id
	and act.activityname = 'Invention';

return 1;
end;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION get_invention_mats(integer)
  OWNER TO gourd;
