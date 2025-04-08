CREATE DATABASE crypto_db;

-- DROP DATABASE IF EXISTS crypto_db;

\copy ethereum_db FROM '/Users/mac/Desktop/Crypto_Trade_Volume_Tracker/csv_files/Ethereum_11_06_2015-10_08_2015_historical_data_coinmarketcap.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');
\copy solana_db FROM '/Users/mac/Desktop/Crypto_Trade_Volume_Tracker/csv_files/Solana_13_03_2020-12_05_2020_historical_data_coinmarketcap.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');
\copy bnb_db FROM '/Users/mac/Desktop/Crypto_Trade_Volume_Tracker/csv_files/BNB_30_05_2017-29_07_2017_historical_data_coinmarketcap.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');
\copy tether_db FROM '/Users/mac/Desktop/Crypto_Trade_Volume_Tracker/csv_files/Tether USDt_13_02_2015-12_04_2015_historical_data_coinmarketcap.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');
\copy xrp_db FROM '/Users/mac/Desktop/Crypto_Trade_Volume_Tracker/csv_files/XRP_23_06_2013-22_08_2013_historical_data_coinmarketcap.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');
\copy usdc_db FROM '/Users/mac/Desktop/Crypto_Trade_Volume_Tracker/csv_files/USDC_22_09_2018-21_11_2018_historical_data_coinmarketcap.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');
\copy dogecoin_db FROM '/Users/mac/Desktop/Crypto_Trade_Volume_Tracker/csv_files/Dogecoin_21_10_2013-20_12_2013_historical_data_coinmarketcap.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');
\copy bicoin_historical_data FROM '/Users/mac/Desktop/Crypto_Trade_Volume_Tracker/csv_files/Bitcoin_05_07_2010-04_09_2010_historical_data_coinmarketcap.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');