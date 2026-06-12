# 米妞KIT 專案功能與特色總覽

本文件整理目前專案已具備的功能與後續規劃。現在的專案以 Cloudflare Pages landing page 為主，尚未建立 D1 schema、訂單 API 或後台資料模型；未來若要處理訂閱、訂單、會員或金流紀錄，再另外加入 D1。

## 目前已具備

- 靜態 landing page：`public/index.html`，包含 SEO、Open Graph、JSON-LD FAQ 與響應式圖片。
- 品牌與圖片資產：`public/assets/brand/`、`public/assets/optimized/` 與首頁 PNG fallback。
- 政策頁：`public/privacy.html`、`public/terms.html`。
- PWA 基礎檔案：`public/site.webmanifest`、favicon 與 app icons。
- 基本部署設定：`wrangler.toml` 指向 `public/` 作為 Pages 輸出目錄。
- 健康檢查 API：`functions/api/health.js`。
- 文件：設計系統、landing 視覺規範與功能規劃文件放在 `docs/`。

## 目前沒有建立

- D1 database binding。
- D1 migrations 或資料表 schema。
- R2 bucket binding。
- 訂閱、訂單、會員、付款或後台 CRUD API。
- 本機 seed data 或測試用資料庫。

## 後續 D1 規劃

等訂閱或訂單功能要開始實作時，再依實際需求新增：

- `wrangler.toml` 的 D1 binding。
- `migrations/` 目錄與第一版 schema。
- 訂閱方案、訂閱狀態、訂單、付款紀錄與客戶資料表。
- 對應的 Pages Functions API。
- migration、seed、測試與部署指令。

這樣可以避免目前 landing 專案先背著還沒用到的資料庫設定，也讓未來 schema 能依真正的訂閱/訂單流程設計。
