select sf2.sector_id,sector_name,sf2.subsector_id from endeavour.stock_fundamentals sf2  
inner join endeavour.sector_lookup sl  
on sf2.sector_id=sl.sector_id;
select * from endeavour.stock_fundamentals sf  
where sl.ticker_name like 'VISA%';
-- For each year, get the stocks with highest close price
select * from endeavour.stocks_price_history;
select 
extract(year from )  MAX(close_price)  from endeavour.stocks_price_history sl
group by trading_date 

select * from stocks_lookup sl inner join 
stocks_price_history   tms on
sl.ticker_symbol  = tms.ticker_symbol  
where sl.ticker_name like 'VISA%'
order by tms.trading_date  desc
limit 30;

--Get min, max, avg close price for each ticker for the year 2022
select MIN(close_price ),MAX(close_price ),AVG(close_price ) from endeavour.stocks_price_history sl
where sl.trading_date >='01/01/2022' and sl.trading_date<= '12/31/2022'
group by ticker_symbol 

--Get the Top 10 highest market cap stocks, with their Ticker names, Sector and Sub-Sector names






