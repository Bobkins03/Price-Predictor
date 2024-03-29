# Alpha Generator 

1. [How to Run Code](#s1) 

---

Alpha Generator is a foundation for a trading algorithm. It includes technical analysis, sentiment analysis, time series forecasting, and backtesting. Alpha generator is not able to automate trades or give legitimate trading advice, however, it is a good starting point for performing quantitative analysis on financial markets. 

For gathering stock data, we are using YFinance API. For gathering relevant historical news data, we are using Alpaca API. We chose to use YFinance for stock data since it accounts for historical stock splits, which allows our machine learning model to better capture the trend. 

Our implementation does not use the sentiment analysis algorithm as it drastically increases the run time, since it has to make a query for each day of data.

Technical Indicators include : 

* Bollinger Bands

* Dual Thrust

* Heikin-Ashi

* Awesome and MACD Oscillators

* RSI

Using the [nltk](https://www.nltk.org/), a natural language toolkit, alpha generator computes the sentiment scores of news articles for each day we observe in a stock. 

For time series forecasting, we feed our data through a preprocessing pipeline so that a neural net is better able to capture relationships between inputs and the target close price for the target day. These preprocessing steps currently involve normalizing each column and removing the last row from the dataframe (kept hidden from model for predictions).

Backtesting of technical indicators is supported. This allows the user to select a date range and a stock to backtest. Alpha generator will then compute signals based on the rules of these technical indicators and compute the returns of each strategy. 

---

# Automating Trading Decisions Using AI:

## How to Run `project.cpp` <a name="s1"></a>

1. Clone the repository in a `VS_Code` folder : 

```bash
/Your/User/Path/VS_Code/ % git clone https://github.com/hkaiserteaching/csc3380-fall-2023-project-group-3.git

/Your/User/Path/VS_Code/ % cd csc3380-fall-2023-project-group-3
```

2. Run the `setup_and_run.sh` Script

3. Change the directory to navigate to in `setup_and_run.sh` (line 4, 14, and 17)

4. Give the script execution permission:

```bash
% chmod +x setup_and_run.sh
```

5. Then run the script:

```bash
% ./setup_and_run.sh
```

6. After running the `setup_and_run.sh`, you can use these instructions to run `project.cpp`:

```bash
% cd build && cmake .. && make && ./project 
```

# 👍

* Just make sure to delete the `env/` and `build/` directories before you push changes
---
