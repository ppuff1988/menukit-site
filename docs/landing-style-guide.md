# 米妞KIT Landing 色彩與視覺規範

這份文件定義 米妞KIT landing page 的行銷頁色彩、使用比例與元件規範。來源依據為 `logo-rectangle.png`、`docs/design-system.md` 與 `docs/app-featured.md`。

## Design Read

米妞KIT landing 是給服務預約、零售商品、課程活動、快閃販售與小型商家的 SaaS 轉換頁。視覺語言要像可信任的小店營運工具，不像促銷型電商模板。基礎風格採奶油紙、烤棕、橄欖墨綠，但 landing 只讓烤棕擔任唯一行銷 accent，橄欖墨綠作為穩定中性色與 focus 色。

## Design Dials

| Dial | Value | Reason |
| --- | ---: | --- |
| `DESIGN_VARIANCE` | 7 | Landing 需要有記憶點，使用 split hero、bento 與不對稱媒體區塊 |
| `MOTION_INTENSITY` | 4 | 以進場、hover 與細微圖片位移為主，不做重型 scroll hijack |
| `VISUAL_DENSITY` | 4 | 兼顧 SaaS 資訊量與小型商家品牌的留白 |

## Palette

### Core Tokens

| Token | Hex | RGB | Landing Role |
| --- | --- | --- | --- |
| `--mk-paper` | `#FFF9EF` | `255 249 239` | 全頁背景、淺色區塊 |
| `--mk-cream` | `#F6F0E3` | `246 240 227` | logo 淺底、hero tint、柔和底色 |
| `--mk-paper-2` | `#F3EADC` | `243 234 220` | 次級背景、卡片內層 |
| `--mk-line` | `#D8C6B3` | `216 198 179` | 框線、分隔線 |
| `--mk-line-strong` | `#B9967F` | `185 150 127` | 媒體框、重點區塊邊界 |
| `--mk-ink` | `#33261C` | `51 38 28` | 主要文字 |
| `--mk-muted` | `#5F4A3B` | `95 74 59` | 輔助文字 |
| `--mk-brand` | `#7D341F` | `125 52 31` | 唯一行銷 accent、primary CTA、重要連結 |
| `--mk-brand-dark` | `#532516` | `83 37 22` | hover、pressed、深色品牌文字 |
| `--mk-brand-warm` | `#9A361B` | `154 54 27` | logo 裝飾色、非文字重點 |
| `--mk-olive` | `#36402A` | `54 64 42` | 深色文字、focus、深色表面 |
| `--mk-olive-soft` | `#EEF1E8` | `238 241 232` | 支援性淡底，不作主要 CTA |
| `--mk-surface` | `#FFFDF8` | `255 253 248` | 表面、圖片留白 |
| `--mk-logo-plate` | `#FFF9EF` | `255 249 239` | 透明 logo 背板 |

### Dark Mode Tokens

| Token | Hex | Usage |
| --- | --- | --- |
| `--mk-dark-bg` | `#191611` | 深色模式背景 |
| `--mk-dark-surface` | `#231E18` | 深色模式卡片表面 |
| `--mk-dark-surface-2` | `#2D261F` | 深色模式次級表面 |
| `--mk-dark-ink` | `#F8EFE2` | 深色模式主要文字 |
| `--mk-dark-muted` | `#D9C7B3` | 深色模式輔助文字 |
| `--mk-dark-line` | `#4A3A2E` | 深色模式框線 |
| `--mk-dark-brand` | `#E0A07D` | 深色模式 accent，維持烤棕辨識度 |

## Color Usage Rules

- Primary CTA 使用 `--mk-brand` 底與白字。Hover 使用 `--mk-brand-dark`。
- Secondary CTA 使用透明或白底、`--mk-line-strong` 邊框、`--mk-ink` 文字。
- 全頁只使用烤棕作為行銷 accent。橄欖色只用於深色中性區、focus、少量穩定感背景。
- 品牌色在單一 viewport 的面積建議低於 12%。Logo、CTA、連結與少數資料重點優先。
- 透明 logo 必須放在 `--mk-logo-plate` 背板上；深色模式也不直接把 logo 放在深色 nav 背景。
- 不使用紫藍漸層、不使用高飽和促銷色、不把頁面整片鋪成深棕。
- 奶油紙色來自品牌文件，允許作為背景，但需搭配白色表面與清楚邊線，避免整頁糊成同一色。
- 狀態色沿用 `docs/design-system.md`，不得用品牌色替代成功、警告、危險。

## Contrast Rules

| Pair | Usage | Result |
| --- | --- | --- |
| `#7D341F` + `#FFFDF8` | Primary CTA | 約 8.67:1，合格 |
| `#532516` + `#FFFDF8` | Hover CTA | 約 12:1，合格 |
| `#33261C` + `#FFF9EF` | Body text | 約 13.97:1，合格 |
| `#5F4A3B` + `#FFF9EF` | Secondary text | 約 7.93:1，合格 |
| `#36402A` + `#FFF9EF` | Focus / dark stable text | 約 10.42:1，合格 |
| `#F8EFE2` + `#191611` | Dark body text | 合格 |
| `#E0A07D` + `#191611` | Dark accent text | 約 8.15:1，合格 |
| transparent logo + `#FFF9EF` | Header logo | 固定背板，合格 |

## Typography

- Landing 使用 system UI stack，維持與既有文件的字級與節奏相容。
- H1 建議 44px 至 72px，桌機最多 2 行。
- Section heading 建議 32px 至 48px。
- Body 建議 16px 至 18px，行高 1.65。
- Label 與小字不低於 12px，避免過多全大寫小標籤。

## Radius And Shape

| Token | Value | Usage |
| --- | ---: | --- |
| `--radius-sm` | `8px` | 按鈕、tag、細小元件 |
| `--radius-md` | `12px` | 卡片、媒體、quote |
| `--radius-lg` | `16px` | hero 視覺、主要 bento |

Landing 採「按鈕 8px、卡片與媒體 12px 至 16px」的規則。避免膠囊按鈕混入方角布局。

## Layout Rules

- Hero 採左文右圖或右文左圖，不做置中大標加裝飾背景。
- Hero 高度使用 `min-height: 100dvh` 或以 nav 高度扣除，不使用 `height: 100vh`。
- Section 需使用不同 layout family：split hero、plain proof band、bento、media split、process rail、final CTA。
- Bento 只放實際內容，不留空格。至少 2 個 cell 需要有圖片、色塊或 pattern。
- 手機版所有多欄區塊明確折成單欄，圖片不可壓到文字。

## Motion Rules

- 只使用 opacity、transform、hover lift 與圖片微縮放。
- 所有動畫都包在 `prefers-reduced-motion: no-preference`。
- Reduced motion 下禁用進場動畫與 hover 位移。
- 不使用 scroll hijack、scroll listener 或無意義 marquee。

## Asset Rules

- Hero 使用部署資產 `public/assets/menukit-landing-hero.png`。
- Storefront 區塊使用部署資產 `public/assets/menukit-storefront-ordering.png`。
- Operations 區塊使用部署資產 `public/assets/menukit-operations-tablet.png`。
- Logo 使用根目錄 `logo-rectangle.png`，輸出到 `public/assets/brand/` 的 WebP/PNG 尺寸檔；header 需提供固定淺色背板。
- 所有圖像 alt 文字需說明畫面用途，不加入裝飾性攝影 kredit。

## CTA Rules

- Primary CTA 固定文案：`加 LINE 詢問`，連到 `https://line.me/R/ti/p/@078xovcj`。
- Secondary CTA 固定文案：`看功能` 或 `寄信詢問`，依區塊任務選用。
- 同一頁不再使用其他同義 CTA，例如 `立即開始`、`聯絡我們`、`預約導入`。
- 桌機按鈕文字不可換行。手機版按鈕可撐滿寬度。
