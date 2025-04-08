CREATE TABLE public.bicoin_historical_data
(
    timeOpen TIMESTAMP WITH TIME ZONE, 
    timeClose TIMESTAMP WITH TIME ZONE,
    timeHigh TIMESTAMP WITH TIME ZONE,
    timeLow TIMESTAMP WITH TIME ZONE,
    name INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume NUMERIC,
    marketCap NUMERIC,
    timestamp TIMESTAMP WITH TIME ZONE
)

CREATE TABLE public.ethereum_db
(
    timeOpen TIMESTAMP WITH TIME ZONE, 
    timeClose TIMESTAMP WITH TIME ZONE,
    timeHigh TIMESTAMP WITH TIME ZONE,
    timeLow TIMESTAMP WITH TIME ZONE,
    name INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume NUMERIC,
    marketCap NUMERIC,
    timestamp TIMESTAMP WITH TIME ZONE
)


CREATE TABLE public.solana_db
(
    timeOpen TIMESTAMP WITH TIME ZONE, 
    timeClose TIMESTAMP WITH TIME ZONE,
    timeHigh TIMESTAMP WITH TIME ZONE,
    timeLow TIMESTAMP WITH TIME ZONE,
    name INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume NUMERIC,
    marketCap NUMERIC,
    timestamp TIMESTAMP WITH TIME ZONE
)


CREATE TABLE public.bnb_db
(
    timeOpen TIMESTAMP WITH TIME ZONE, 
    timeClose TIMESTAMP WITH TIME ZONE,
    timeHigh TIMESTAMP WITH TIME ZONE,
    timeLow TIMESTAMP WITH TIME ZONE,
    name INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume NUMERIC,
    marketCap NUMERIC,
    timestamp TIMESTAMP WITH TIME ZONE
)


CREATE TABLE public.tether_db
(
    timeOpen TIMESTAMP WITH TIME ZONE, 
    timeClose TIMESTAMP WITH TIME ZONE,
    timeHigh TIMESTAMP WITH TIME ZONE,
    timeLow TIMESTAMP WITH TIME ZONE,
    name INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume NUMERIC,
    marketCap NUMERIC,
    timestamp TIMESTAMP WITH TIME ZONE
)


CREATE TABLE public.usdc_db
(
    timeOpen TIMESTAMP WITH TIME ZONE, 
    timeClose TIMESTAMP WITH TIME ZONE,
    timeHigh TIMESTAMP WITH TIME ZONE,
    timeLow TIMESTAMP WITH TIME ZONE,
    name INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume NUMERIC,
    marketCap NUMERIC,
    timestamp TIMESTAMP WITH TIME ZONE
)


CREATE TABLE public.dogecoin_db
(
    timeOpen TIMESTAMP WITH TIME ZONE, 
    timeClose TIMESTAMP WITH TIME ZONE,
    timeHigh TIMESTAMP WITH TIME ZONE,
    timeLow TIMESTAMP WITH TIME ZONE,
    name INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume NUMERIC,
    marketCap NUMERIC,
    timestamp TIMESTAMP WITH TIME ZONE
)


CREATE TABLE public.xrp_db
(
    timeOpen TIMESTAMP WITH TIME ZONE, 
    timeClose TIMESTAMP WITH TIME ZONE,
    timeHigh TIMESTAMP WITH TIME ZONE,
    timeLow TIMESTAMP WITH TIME ZONE,
    name INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume NUMERIC,
    marketCap NUMERIC,
    timestamp TIMESTAMP WITH TIME ZONE
)


-- Set ownership of the tables to the postgres user
ALTER TABLE public.exchanges OWNER to postgres;
ALTER TABLE public.trade_volumes OWNER to postgres;
ALTER TABLE public.binance_BTCUSDT OWNER to postgres;
ALTER TABLE public.bicoin_historical_data OWNER to postgres;
ALTER TABLE public.ethereum_db OWNER to postgres;
ALTER TABLE public.solana_db OWNER to postgres;
ALTER TABLE public.bnb_db OWNER to postgres;
ALTER TABLE public.tether_db OWNER to postgres;
ALTER TABLE public.xrp_db OWNER to postgres;
ALTER TABLE public.usdc_db OWNER to postgres;
ALTER TABLE public.dogecoin_db OWNER to postgres;








