select typ.typename, mat.quantity, blu.wastefactor, typ2.typename
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
			--and marketgroupname like 'Medium Trimark%'
			)
		)
		and typ2.typename = 'Medium Trimark Armor Pump II'; -- Medium Tri II;
;