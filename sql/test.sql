select * from invmarketgroups where parentgroupid in (
	select marketgroupid from invmarketgroups where parentgroupid in (
		select marketgroupid from invmarketgroups where marketgroupname = 'Rigs')
	)
--and marketgroupname like 'Medium Trimark%';
;