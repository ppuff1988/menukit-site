# 米妞KIT Design System

這份規範定義米妞KIT 前台預訂、預約、販售與後台營運介面的共用視覺語言。新版色彩以 logo 的奶油紙、烤棕與橄欖墨綠為核心：前台要像小店把今日可預約與可購買的內容清楚交到客人手上，溫暖、清楚、可信任；後台則保持安靜、穩定、可快速掃讀。

## Design Principles

- **像小店，不像電商模板**：底色保留奶油紙感，主操作使用烤棕，不用高飽和亮色堆出促銷感。
- **品牌色要克制**：烤棕只用在品牌識別、主要 CTA、目前選取狀態與少量重點，不大面積鋪滿畫面。
- **橄欖墨綠負責穩定感**：深色導覽、焦點狀態、管理工具的穩定底色優先使用橄欖墨綠，不再使用夜幕海軍藍作為主要識別色。
- **後台優先可讀性**：表格、表單、狀態、導覽要比裝飾更重要。
- **一致的框線與圓角**：預設使用 8px 圓角，讓卡片、輸入框、按鈕看起來同一套。
- **狀態色語意固定**：成功、警告、危險不要和品牌色混用。

## Logo Color Source

從目前根目錄 `logo-rectangle.png` 擷取出的主要色相：

| Color | Hex | Role |
| --- | --- | --- |
| 奶油紙 | `#F6F0E3` | logo 淺底、品牌背板、hero tint |
| 頁面米白 | `#FFF9EF` | 全頁背景、logo 對比背板 |
| 深可可棕 | `#532516` | logo 深色筆畫、hover、最高對比文字 |
| 烤棕 | `#7D341F` | 主要 CTA、品牌重點、重要連結 |
| 亮烤棕 | `#9A361B` | logo 裝飾色，僅作大字或非文字重點 |
| 可可灰 | `#5F4A3B` | 次要文字、輔助說明 |
| 橄欖墨綠 | `#36402A` | focus、穩定感、深色表面 |
| 灰米線 | `#D8C6B3` | 框線、分隔線、disabled 邊界 |

對比基準：

- `#532516` 在 `#FFF9EF` 上約 12.19:1，可用於 logo 筆畫、標題與 hover。
- `#7D341F` 在 `#FFFDF8` 上約 8.67:1，可用於一般文字、主要按鈕與連結。
- `#5F4A3B` 在 `#FFF9EF` 上約 7.93:1，可用於 14px 以上輔助文字。
- `#36402A` 在 `#FFF9EF` 上約 10.42:1，可用於 focus 與深色穩定區塊。
- 透明 logo 必須放在 `#FFF9EF` 或同等亮度背板上；不可直接放在深色背景或照片上。

## Color Tokens

| Token | Hex | Usage |
| --- | --- | --- |
| `--brand` | `#7D341F` | 主要 CTA、品牌重點、目前選取狀態 |
| `--brand-dark` | `#532516` | CTA hover / pressed、深色品牌文字 |
| `--brand-warm` | `#9A361B` | logo 裝飾色、非文字重點，不作小字 |
| `--on-brand` | `#FFFDF8` | `--brand` 上的文字；深色模式亮品牌底需改用深色文字 |
| `--brand-soft` | `#F3EADC` | 品牌淡底、輕量提示背景、表頭 |
| `--brand-tint` | `#F6F0E3` | 前台暖色背景、hero tint、低強度區塊 |
| `--logo-plate` | `#FFF9EF` | 透明 logo 的固定背板，亮暗模式都使用 |
| `--accent` | `#36402A` | 後台側欄、深色導覽、焦點狀態 |
| `--accent-2` | `#4F5A39` | 後台導覽 active / hover |
| `--accent-soft` | `#EEF1E8` | 綠灰淡底、資訊提示 |
| `--accent-line` | `#C9D0BC` | 綠灰框線 |
| `--olive-panel` | `#2F3825` | 需要白字的深色綠卡片背景 |
| `--on-olive-panel` | `#FFF9EF` | `--olive-panel` 上的文字 |
| `--bg` | `#FFF9EF` | 頁面背景 |
| `--surface` | `#FFFDF8` | 卡片、表單、表格容器 |
| `--surface-muted` | `#F3EADC` | 表頭、次級背景 |
| `--surface-tint` | `#EFE5D9` | 選取淡底、品牌低強度底 |
| `--ink` | `#33261C` | 主要文字 |
| `--muted` | `#5F4A3B` | 次要文字、輔助說明 |
| `--muted-weak` | `#7F8070` | 圖示、非關鍵輔助元素，不作小字 |
| `--line` | `#D8C6B3` | 預設框線 |
| `--line-strong` | `#B9967F` | 媒體框、重要區塊邊界 |
| `--success` | `#2F6F55` | 成功、完成、可預訂 |
| `--success-soft` | `#E6F1EA` | 成功淡底 |
| `--warning` | `#A97913` | 警告、庫存偏低、需注意 |
| `--warning-soft` | `#F8EBC8` | 警告淡底 |
| `--danger` | `#B83A2E` | 錯誤、刪除、取消 |
| `--danger-soft` | `#FCE8E2` | 錯誤淡底 |

保留相容 alias：

- `--navy` 應逐步改為 `--accent`。
- `--navy-2` 應逐步改為 `--accent-2`。
- `--navy-soft` 應逐步改為 `--accent-soft`。
- `--navy-line` 應逐步改為 `--accent-line`。

## Color Usage Rules

- **Primary action**：使用 `--brand` 底與 `--on-brand` 文字；hover / pressed 使用 `--brand-dark`。同一個區塊最多一個 primary action。
- **Secondary action**：白底、`--line` 邊框、`--ink` 文字。不要用品牌淡底假裝 secondary，避免畫面過熱。
- **Brand emphasis**：可用 `--brand` 做 logo、連結、目前頁籤、重要數字，但單一 viewport 中品牌色面積應控制在 10-15% 以內。
- **Admin navigation**：使用 `--accent` 作深色底，active / hover 使用 `--accent-2`，文字與 icon 使用 `#FFF9EF` 或白色。
- **Storefront background**：使用 `--bg` 或 `--brand-tint`，卡片維持白底；不要把整個頁面做成深棕或整片米色。
- **Tables and forms**：表頭用 `--surface-muted`，框線用 `--line`，hover 可用 `--surface-tint`。表格內除主要流程外不使用 brand button。
- **Semantic status**：成功、警告、危險一律用 semantic tokens，不用 `--brand` 或 `--accent` 取代。
- **Muted text**：一般小字用 `--muted`；`--muted-weak` 不用於 14px 以下文字。
- **Focus states**：表單 focus 優先用 `--accent` 邊框與 `rgba(54, 64, 42, 0.18)` 外光；危險欄位才使用 `--danger`。
- **Gradients**：只允許非常輕的奶油紙到背景色漸層；避免大面積高飽和漸層、紫藍漸層或裝飾色球。
- **Dark mode contrast**：若深色模式把品牌色調亮，CTA 文字需切換為深色 `--on-brand`；深色卡片背景使用獨立的 `--olive-panel`，避免亮底白字。

## Radius

| Token | Value | Usage |
| --- | --- | --- |
| `--radius-xs` | `4px` | 狀態標籤、小型 badge |
| `--radius-sm` | `6px` | 小按鈕、表格內控制 |
| `--radius` | `8px` | 預設按鈕、輸入框、卡片 |
| `--radius-lg` | `12px` | Modal、大型表單群組 |

避免把後台按鈕、卡片、輸入框做成大膠囊圓角；營運工具應保持安靜、密度適中、容易掃讀。

## Typography

- 字體：system UI stack，避免額外字體請求；若正式品牌字導入，需使用 `font-display: swap` 並重新測 PageSpeed。
- H1：26px / 1.15，用於頁面主標題與登入標題。
- H2：18px / 1.25，用於區塊標題。
- H3：16px / 1.25，用於卡片內標題。
- 表單 label：13px、粗體，用 `--ink`；需要管理介面穩定感時可用 `--accent`，但不可低於 AA 對比。
- 輔助文字：13-14px，使用 `--muted`。

## Components

### Buttons

- **Primary**：主要提交，例如登入、儲存、送出訂單。使用 `--brand` 底、白字。
- **Secondary / Ghost**：返回、取消、前台、語言切換、工具型操作。白底、`--line` 邊框、`--ink` 文字。
- **Danger**：刪除、取消訂單、停用。白底、危險色文字與淡紅框線。
- **Icon button**：只放圖示的工具按鈕，尺寸 34-40px，必須有 `aria-label`。

### Fields

- 輸入框使用白底、`--line` 邊框、8px 圓角。
- Focus 使用 `--accent` 邊框與淡橄欖外光。
- 密碼欄位右側使用眼睛圖示按鈕，圖示顏色用 `--accent` 或 `--muted`。
- 錯誤訊息放在欄位群組下方，用 `--danger-soft` 淡底與 `--danger` 文字。

### Cards and Panels

- 預設：白底、`1px solid --line`、8px 圓角。
- 卡片內距：小卡 12px，表單卡 16-20px，登入卡 20px。
- 不要把卡片包在另一張卡片裡；頁面區塊用自然留白或 full-width band。

### Tables

- 表頭使用 `--surface-muted`。
- 表格邊線使用 `--line`。
- Hover / selected row 可用 `--surface-tint`。
- 表格內按鈕使用 secondary 或 ghost，除非是明確主要流程。

### Navigation

- 後台側欄使用 `--accent`。
- `768px` 以上不另做桌機版，最大版型沿用平板版固定 topbar + compact rail。
- 手機側欄使用窄版 icon-only rail，避免遮住內容。
- 平板以上與手機側欄都使用 icon-only；不要顯示選單文字。
- Active / hover 使用 `--accent-2`，不要在選定項目另外加左側襯線。
- 側欄 icon 使用 `#F3EADC`，active 使用白色。
- 手機與平板以上後台保留左側 rail；登入與設定帳號畫面不保留 rail 空間。

### Status

- Success：完成、可預訂、已啟用。
- Warning：低庫存、未完整設定、待處理。
- Danger：取消、錯誤、刪除。
- Brand：只表示品牌與主要操作，不表示狀態。

## Usage by Surface

- **Public storefront**：多用 `--surface`、`--bg`、`--brand-tint`，用 `--brand` 做主要 CTA，讓預訂、預約與購買流程像小店服務說明一樣親切、清楚。
- **Admin dashboard**：多用 `--accent`、`--surface`、`--line`，讓管理工作穩定、密度適中。
- **PWA / browser theme**：使用 `--accent`，與後台導覽一致。
- **Logo placement**：logo 周圍優先使用白底、`--brand-tint` 或透明留白；不要放在深棕滿版背景上，以免筆畫變髒。
