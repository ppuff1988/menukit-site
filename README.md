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

部署：

```bash
make deploy
```

## GitHub Actions CI/CD

`.github/workflows/deploy.yml` 會在 pull request 跑檢查，並在 `main` push 或手動觸發時部署到 Cloudflare Pages。

需要在 GitHub repository secrets 設定：

- `CLOUDFLARE_ACCOUNT_ID`
- `CLOUDFLARE_API_TOKEN`

目前 token 只需要能部署 Cloudflare Pages。未來加入 D1 migration 或 R2 檔案流程時，再把同一顆 token 的權限擴充到 D1 / R2，並在 workflow 裡加入對應步驟。

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

中文翻譯：

版權所有 © 2026 MenuKit。保留所有權利。

本原始碼公開可見，僅供部署與審閱用途。

未經書面同意，不授予任何複製、修改、散布或使用本程式碼的權限。
