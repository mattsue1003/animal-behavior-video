# 🐾 AI 萌寵映畫誌｜課程資源站

永豐餘 AI Club 企業內訓「AI 萌寵映畫誌」的課後資源網站。

**講師**：葉明理 助理教授（動物輔助治療）× 鍾孟修 職能治療師（AI 應用）

## 內容

| 檔案 | 說明 |
|---|---|
| `index.html` | 入口首頁，連到下面五個資源 |
| `behaviors.html` | 毛孩行為資料庫 — 60 種犬貓行為，可搜尋、可篩選，每則附看影片／看圖片／問 AI |
| `videos.html` | 毛孩行為影片資料庫 — 31 支查證過的專業影片＋16 個國內外頻道推薦 |
| `research.html` | 毛孩研究知識庫 — 18 篇同儕審查研究，附 DOI 原文連結 |
| `game.html` | 毛孩品種猜猜樂 — 20 種犬貓品種的看圖猜謎破冰遊戲 |
| `deck.html` | 完整課程簡報（電腦翻頁／手機自動切換滑動模式） |

全部是**單一檔案的純 HTML**，沒有任何相依套件，也不需要建置流程。

## 一鍵上架 GitHub Pages

### 方法 A：用終端機（最快）

1. 先到 https://github.com/new 建立一個**空的** repository，名稱例如 `ai-pet-course`，
   **不要**勾選 Add a README file。
2. 打開「終端機」，把這個資料夾拖進去取得路徑，然後執行：

```bash
cd <這個資料夾的路徑>
./deploy.sh <你的GitHub帳號> ai-pet-course
```

3. 回到 GitHub 該 repo → **Settings** → 左側 **Pages** →
   Source 選 **Deploy from a branch**，Branch 選 **main** / **/(root)** → Save。
4. 等 1–2 分鐘，網址就是：
   `https://<你的GitHub帳號>.github.io/ai-pet-course/`

### 方法 B：純網頁拖拉（不用終端機）

1. 到 https://github.com/new 建立 repository（同上，不要勾 README）。
2. 在 repo 頁面點 **uploading an existing file**。
3. 把這個資料夾裡的**所有檔案**（含 `.nojekyll`）拖進去 → Commit changes。
4. Settings → Pages → Branch 選 main / (root) → Save。

> `.nojekyll` 這個檔案一定要上傳，否則 GitHub 的 Jekyll 可能會處理掉某些檔案。
> 在 Mac 上它預設是隱藏的，在 Finder 按 `Cmd + Shift + .` 可以顯示隱藏檔案。

## 之後要更新內容

改完檔案後，在資料夾裡執行：

```bash
git add -A && git commit -m "更新內容" && git push
```

約 1 分鐘後網站就會更新。

## 授權與注意事項

本站內容為課程教學參考，不能取代獸醫師診斷或專業行為諮詢。
影片與圖片按鈕連結至 YouTube 與 Google 的即時搜尋結果，內容由第三方提供。
研究知識庫中的論文著作權屬各原作者與期刊，本站僅提供書目與 DOI 連結。

## 上課動線

- 簡報左上角：「⏮ 封面」回第 1 頁、「🏠 資源站首頁」回 index.html；手機版在頂部列。
- 簡報裡點行為資料庫／影片資料庫／研究知識庫／猜猜樂，會在同一分頁開啟並記住目前頁碼；這些頁面右下角有「📑 回到簡報（第 N 頁）」，按一下回到剛剛那一頁。
- 簡報封面與最後一頁有 QR Code，連到 https://mattsue1003.github.io/animal-behavior-video/deck.html
