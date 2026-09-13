#!/usr/bin/env bash
# 一鍵上架到 GitHub Pages
# 用法：./deploy.sh <GitHub帳號> [repo名稱]
set -e

USER="$1"
REPO="${2:-ai-pet-course}"

if [ -z "$USER" ]; then
  echo "用法：./deploy.sh <你的GitHub帳號> [repo名稱]"
  echo "例如：./deploy.sh mattsue1003 ai-pet-course"
  exit 1
fi

cd "$(dirname "$0")"

if ! command -v git >/dev/null 2>&1; then
  echo "找不到 git。請先安裝 Xcode Command Line Tools：xcode-select --install"
  exit 1
fi

if [ ! -d .git ]; then
  git init
  git branch -M main
fi

git add -A
git commit -m "AI 萌寵映畫誌課程資源站" || echo "（沒有新的變更需要提交）"

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "https://github.com/$USER/$REPO.git"
else
  git remote add origin "https://github.com/$USER/$REPO.git"
fi

echo ""
echo "正在推送到 https://github.com/$USER/$REPO ..."
git push -u origin main

echo ""
echo "✅ 推送完成！"
echo ""
echo "最後一步（只需做一次）："
echo "  1. 開啟 https://github.com/$USER/$REPO/settings/pages"
echo "  2. Source 選 Deploy from a branch"
echo "  3. Branch 選 main、資料夾選 / (root) → Save"
echo ""
echo "約 1–2 分鐘後，你的網站就會在："
echo "  https://$USER.github.io/$REPO/"
