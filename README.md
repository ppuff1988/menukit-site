# 米妞KIT

米妞KIT 是一個面向服務預約、零售商品、課程活動、快閃販售與小型商家的預訂營運系統 Landing / Pages 專案。首頁重點放在預訂場次、商品庫存、前台下單與後台營運工作平台的產品概念，對外文案避免暴露過多底層雲端平台細節。

## 專案內容

- `public/index.html`：首頁主頁面，包含 SEO、AEO FAQ、Open Graph、JSON-LD 與響應式圖片。
- `public/assets/brand/`：由根目錄品牌圖產出的網站尺寸檔，包含長方形 logo、favicon、PWA icon 與社群分享圖。
- `public/assets/optimized/`：首頁情境圖的 WebP 響應式尺寸。
- `functions/api/health.js`：健康檢查 API。
- `docs/`：產品功能、設計系統與 landing 視覺規範。

## 開發

需求：

- Node.js 24+
- npm

安裝依賴：

```bash
make install
```

啟動本機開發伺服器：

```bash
make dev
```

預設網址：

```text
http://localhost:8787/
```

`make dev` 會啟用 live reload。也可以指定 port：

```bash
PORT=5174 make dev
```

## 檢查與部署

檢查必要檔案：

```bash
make check
```

也可以使用 npm script：

```bash
npm run check
```

部署：

```bash
make deploy
```

若要在本機先建立 Cloudflare Pages project：

```bash
make pages-create
```

## GitHub Actions CI / Manual CD

`.github/workflows/ci.yml` 會在 pull request 與 `main` push 時跑檢查。

部署不會在 push 時自動執行。要從 GitHub Actions 部署，請到 Actions → Deploy Pages → Run workflow 手動觸發；手動觸發會先跑檢查，通過後部署 `public/` 到 Cloudflare Pages。

workflow 不會建立 Cloudflare Pages project。請先在 Cloudflare 建好 `menukit` Pages project，或在本機執行一次：

```bash
make pages-create
```

`Deploy Pages` 手動部署需要在 repository secrets 設定：

- `CLOUDFLARE_ACCOUNT_ID`
- `CLOUDFLARE_API_TOKEN`

手動部署前，請先用 Wrangler 登入 Cloudflare：

```bash
npx wrangler login
```

`CLOUDFLARE_API_TOKEN` 目前只需要：

- Account → Cloudflare Pages → Edit

未來加入 D1 migration 或 R2 檔案流程時，再把同一顆 token 的權限擴充：

- Account → D1 → Edit
- Account → Workers R2 Storage → Edit

## Turnstile

目前首頁沒有實際送出的表單，只有 LINE 與 Email 聯絡入口，因此尚未放入 Turnstile widget。之後新增訂閱、詢價、登入或訂單表單時，再接 Turnstile。

未來接 Turnstile 時會需要：

- Turnstile site key：給前端 widget 使用，可放在 Pages 環境變數，例如 `TURNSTILE_SITE_KEY`。
- Turnstile secret key：只能放在 Cloudflare secret 或 GitHub secret，例如 `TURNSTILE_SECRET_KEY`，不可寫入 repo。
- 後端驗證流程：表單送出時帶上 `cf-turnstile-response`，由 Pages Function 或 Worker 呼叫 Turnstile `siteverify` 驗證後，再執行原本的訂閱 / 訂單邏輯。

如果未來重新啟用 GitHub Actions 自動建立或管理 Turnstile widget，`CLOUDFLARE_API_TOKEN` 需要再加：

- Account → Turnstile → Edit

如果要在自動化流程裡部署獨立的 siteverify Worker，還需要：

- Account → Workers Scripts → Edit

## 圖片資產

網站實際使用的圖片集中在 `public/assets/`：

- `public/assets/brand/`：logo、favicon、PWA icon 與社群分享圖。
- `public/assets/optimized/`：首頁情境圖與小尺寸 logo 的 WebP/PNG 響應式版本。
- `public/assets/*.png`：首頁圖片的原始 PNG fallback。

文件預覽頁 `docs/landing.html` 會直接引用 `public/assets/`，避免同一張圖片在文件與部署目錄各放一份。

## 聯絡

LINE：`@078xovcj`

聯絡信箱：`sevice@menukit.tw`

## 版權聲明

Copyright © 2026 MenuKit. All rights reserved.

本原始碼公開可見，僅供部署與審閱用途。

未經書面同意，不授予任何複製、修改、散布或使用本程式碼的權限。
