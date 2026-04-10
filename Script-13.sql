select  ticker_symbol,rank() over(order by sl.ticker_symbol) as "rank",
dense_rank() over (order by sl.ticker_symbol) as dense_rank
from endeavour.stocks_lookup sl 

select ticker_symbol, sector_id,current_ratio,
rank() over(order by current_ratio) as rank,
dense_rank() over(partition by sector_id order by current_ratio) as dense_rank from endeavour.stock_fundamentals

For each subsector: rank companies by ROE return only top 2 must include: subsector_name (join needed)
select sf.subsector_id, sl.subsector_name,rank() over(partition by sf.subsector_id order by sf.roe)from endeavour.subsector_lookup sl join
endeavour.stock_fundamentals sf on sl.subsector_id = sf.subsector_id
group by sf.subsector_id,sl.subsector_name,sf.roe
get top 3 high market capital from healthcare
select sl.ticker_name,sf.market_cap from endeavour.stocks_lookup sl join 
endeavour.stock_fundamentals sf on sl.ticker_symbol = sf.ticker_symbol
where sf.sector_id =34
order by sf.market_cap desc
limit 5
(or)
select sl.ticker_name,rank() over (partition by sf.sector_id order by sf.market_cap desc ) as top_market  from endeavour.stocks_lookup sl join 
endeavour.stock_fundamentals sf on sl.ticker_symbol = sf.ticker_symbol
where sf.sector_id =34
--Get the price history for visa for dec 16 2015, july 10 2012 and sep 16 2013                                    19

select sl.ticker_symbol, sl.ticker_name, sp.trading_date from endeavour.total_market_stocks sl join
endeavour.stocks_price_history sp on sl.ticker_symbol = sp.ticker_symbol 
where sl.ticker_name like 'Visa%'
and sp.trading_date in ('2015-12-16','2012-07-16','2013-09-16')

