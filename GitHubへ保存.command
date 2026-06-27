#!/bin/bash
# 変更を GitHub に保存（コミット＋プッシュ）します。
cd "$(dirname "$0")" || exit 1
echo "============================================"
echo " GitHub に保存します（コミット＋アップロード）"
echo "============================================"
git add -A
if git diff --cached --quiet; then
  echo "（コミットする変更はありません）"
else
  git commit -m "更新: $(date '+%Y-%m-%d %H:%M')"
fi
echo "アップロード中…"
if git push -u origin main; then
  echo ""
  echo "✓ 完了しました。このウィンドウは閉じて構いません。"
else
  echo ""
  echo "⚠ アップロードに失敗しました。"
  echo "  まだ GitHub にリポジトリを作っていない場合は、"
  echo "  https://github.com/new で Private リポジトリ 'blood-flow-sim' を作成してから"
  echo "  もう一度このファイルをダブルクリックしてください。"
fi
echo ""
read -n 1 -s -r -p "キーを押すと閉じます…"
