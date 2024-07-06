select * from firmselect * from audience_firmselect id,solicitation_name from firmselect id,amount from audience_firm

select a.id,max(b.amount) as 'max amount'from firm ajoin Audience_Firm bon a.id=b.idgroup by a.idhaving max(b.amount)>2000order by id desc
