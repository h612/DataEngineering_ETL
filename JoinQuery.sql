--lga school_name postcode median_income

select s.lga_name
		,sl.locality_name
		,  s."2015-16"
		--, st.school_name
		, sl.post_code
		,st.*
from salarylga s
inner join  school_locality sl
on cass.lga = sl.lga 
inner join students st
on lower(sl.locality_name)=lower(st.locality)
order by  s."2015-16" desc

select * from salarylga 


select s.*
		,sl.*
from salarylga s
inner join  school_locality sl
on s.lga  = cast(sl.lga as character(255))
