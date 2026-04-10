select * from endeavour.stocks_price_history sf where sf.ticker_symbol ='Vis%'
and sf.trading_date >= current_date - interval '30 days'

select * from endeavour.stocks_lookup sl where sl.ticker_name like 'Vi'


select * from stocks_lookup sl inner join 
stocks_price_history   tms on
sl.ticker_symbol  = tms.ticker_symbol  
where sl.ticker_name like 'VISA%'
order by tms.trading_date  desc
limit 30;





