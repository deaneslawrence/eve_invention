select typename from invtypes where marketgroupid in
	(select marketgroupid from invmarketgroups where parentgroupid in 
		(select marketgroupid from invmarketgroups where parentgroupid in 
			(select marketgroupid from invmarketgroups where marketgroupname = 'Rigs')
		)
--		and marketgroupname LIKE 'Medium%'
		)
	ORDER BY typename ASC;
