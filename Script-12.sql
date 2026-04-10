select ss.sector_id,sl.sector_name,ss.subsector_name from endeavour.subsector_lookup ss
right join endeavour.sector_lookup sl on ss.sector_id = sl.sector_id

select subsector_name, count(sector_id) from endeavour.subsector_lookup sl 
group by subsector_name,sector_id

select sl.ticker_name, cl.state from endeavour.company_locations cl
 join endeavour.stocks_lookup sl on cl.ticker_symbol = sl.ticker_symbol where cl.state ='PA'
-- get no of companies in each sector
select  sl.sector_name,subsector_name,count(subsector_id) from endeavour.sector_lookup sl 
join endeavour.subsector_lookup sl2  on sl.sector_id = sl2.sector_id
group by sl.sector_name ;
--avg price per every company
--Get all the subsectors belonging to the healthcare sector
select sl.sector_id, sub.subsector_name from endeavour.sector_lookup sl 
join endeavour.subsector_lookup sub on sl.sector_id = sub.sector_id
where sl.sector_id =34
--Get all stocks belonging to the technology sector

select * from endeavour.sector_lookup join 
endeavour.stock_fundamentals on endeavour.sector_lookup.sector_id = endeavour.stock_fundamentals.sector_id
where endeavour.sector_lookup.sector_id = 37
--Get stocks whose marketcap is greater then 1billion USD
select * from endeavour.stock_fundamentals where market_cap between 1000000000 and 100000000000 
order by market_cap desc 
--Calculate avg and sum market_cap and sumof current ratio for industrial stocks                                    10

select s1.ticker_symbol,s2.ticker_symbol ,s1.current_ratio from endeavour.stock_fundamentals s1 join 
endeavour.stock_fundamentals s2 on s1.ticker_symbol=s2.ticker_symbol 
where s1.current_ratio = s2.current_ratio
Get count of stocks, average market cap and sum of current ratio for stocks whose current ratio is greater than 3 and market cap is less than 500 Million USD
select count(ticker_symbol),avg(market_cap),sum(current_ratio) from endeavour.stock_fundamentals sf 
where sf.current_ratio >3 and sf.market_cap <500000000

select ticker_symbol, trading_date  from endeavour.stocks_price_history 
where EXTRACT(month  FROM trading_date) =12 and EXTRACT(year  FROM trading_date) = 2000
SELECT * FROM endeavour.stocks_price_history
WHERE EXTRACT(YEAR FROM trading_date) = EXTRACT(YEAR FROM current_date);
--Get the stock price history for nvidia for july 2022
For each month of 2023 find the highest close price and the avg high price 27
select * from endeavour.stock_fundamentals;
select max(close_price), avg(high_price) from endeavour.stocks_price_history
where extract (year from trading_date) = 2023 and extract (month from trading_date) in (1,2,3,4,5,6,7,8,9,10,11,12)

For each month of 2023 and for each ticker find the highest close price and the avg high price 28
select ticker_symbol,trading_date,max(close_price), avg(high_price) from endeavour.stocks_price_history
where extract (year from trading_date) = 2023 and extract (month from trading_date) in (1,2,3,4,5,6,7,8,9,10,11,12)
group by ticker_symbol,trading_date
order by trading_date

-whuch ticker symbol have same curr_ratio
select current_ratio, ticker_symbol

--for each sector, find top 3 subsectors with highest avg market cap
select sl.sector_id, su.subsector_name,max() from endeavour.sector_lookup sl join 
endeavour.subsector_lookup su on sl.sector_id = su.sector_id

--Get the Top 10 highest market cap stocks, with their Ticker names, Sector and Sub-Sector names
select sl.ticker_name, sf.market_cap , dense_rank() over(order by sf.market_cap desc) as top_10,
sl2.sector_name,sl3.subsector_name   from endeavour.stocks_lookup sl 
join endeavour.stock_fundamentals sf on sl.ticker_symbol = sf.ticker_symbol
join endeavour.sector_lookup sl2 on sf.sector_id = sl2.sector_id
join endeavour.subsector_lookup sl3  on sf.subsector_id = sl3.subsector_id
limit 10

















