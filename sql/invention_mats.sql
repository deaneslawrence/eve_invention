select	typ.typename, 
				typ2.typename, 
				req.quantity, 
				req.damageperjob, 
				req.recycle
from ramtyperequirements req
inner join invtypes typ on req.typeid = typ.typeid
	--select typeid, typename from invtypes typ where marketgroupid in (
inner join invmarketgroups img on typ.marketgroupid = img.marketgroupid 
inner join ramactivities act on act.activityid = req.activityid
inner join invtypes typ2 on typ2.typeid = req.requiredtypeid
where img.parentgroupid in (
	select marketgroupid from invmarketgroups where parentgroupid in (
		select marketgroupid from invmarketgroups where parentgroupid in (
			select marketgroupid from invmarketgroups where marketgroupname = 'Blueprints')
				and marketgroupname = 'Ship Modifications'
			)
		and marketgroupname like '% Rig%'
		)
	and typ.typeid = 4396
	and act.activityname = 'Invention'
;
	