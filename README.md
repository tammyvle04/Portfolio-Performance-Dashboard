# Portfolio Performance Dashboard

## Business Problem
- How did each stock and the overall portfolio perform over time?
  (Establishes a performance baseline and shows which holdings are trending up or down)
- Which holdings drove the most gain/loss, and how volatile was each?
  (Gain and loss can indicate how well a company is performing, as well as indicate any major events that may have influenced the prices)
- How correlated are the holdings - is this actually a diversified portfolio?
  (Correlation is important because a portfolio where all the stocks move together isn't actually diversified even if it holds many stocks)
- How did the portfolio perform vs. the S&P 500 benchmark
  (Indicates whether portfolio's risk-adjusted performance is competitive with a passive market investment)


## Data Source
- Daily historical price data pulled via the `yfinance` Python library (Yahoo Finance).
### Tickers | Date: Jan. 1, 2021 - Present
- AAPL (tech)
- JPM (finance)
- JNJ (healthcare)
- XOM (energy)
- PG (consumer staples)
- NVDA (tech/semiconductors)
- SPY (S&P 500 ETF, benchmark)

## Key Findings
- Portfolio grew from ~$10,000 to ~$51,400 over the period, vs. ~$22,600 for the same investment in the S&P 500, which is 2.3x the benchmark's growth.
- This performance was concentrated in one holding: NVDA returned a positive 1,582% over the period, while the remaining five holdings averaged closer to a positive 180% combined.
- Correlation analysis showed that the portfolio is moderately diversified overall, but AAPL and NVDA are the most correlated pair (0.48). This means the portfolio's biggest source of risk concentration is in its two tech holdings.

 ### Recommendation
 Although the portfolio outperformed the market, its return is not representative of what a similarly constructed equal weighted portfolio would normally achieve. The result should be read as a specific mix, at a specific time, benefitting heavily from one outlier holding, instead of a repeatable diversification strategy
 
