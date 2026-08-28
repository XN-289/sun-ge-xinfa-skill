# External Search Protocol

## When Required

Run this before current-event, case-study, market, competitor, or strategy
analysis. It is not optional for live facts: litigation, prices, token
contracts, public statements, product launches, and legal outcomes all decay.

## Query Design

Search in Chinese and English, and combine four parts:

| Part | Examples |
|---|---|
| Entity | Justin Sun, TRON, BitTorrent, Jing Tian, HTX |
| Event | SEC litigation, Buffett lunch, banana auction, essay response |
| Object | official statement, court filing, wallet, token, launch, partnership |
| Time | 2026, latest, this week, announcement date |

Examples:

```text
Justin Sun Jing Tian essay official response
SEC v Sun docket 2026
TRON HTX BTT official announcement latest
孙宇晨 回应 景甜 小作文 最新
```

## Source Priority

1. Primary: court docket, regulator release, official project docs, exchange
   statement, verified X/Weibo account, first-party repository.
2. Strong secondary: two independent reputable outlets reporting the same
   verifiable anchor.
3. Weak: aggregator rewrites, screenshots, anonymous reposts, AI summaries.

Do not use search results to repeat sexual, reproductive, medical, family, or
private-life allegations. Search only for public anchors and current status.

## Cross-Check Rule

High-stakes claims require at least two independent primary or strong secondary
sources, or one primary source whose text can be directly read. If only a
screenshot or repost exists, downgrade the claim to `网传，未经核实`.

## Required Output Block

```text
外部检索摘要
检索时间：
查询：
来源：
  - 一手 / 强二手 / 弱信号
URL：
公开锚点：
证据层：
未找到或待核验：
```

If the host agent has no web-search or browser tool, state that limitation and
continue with the existing evidence ladder instead of inventing current facts.

