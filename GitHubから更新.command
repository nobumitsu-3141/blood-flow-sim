#!/bin/bash
# GitHub から最新版を取り込みます（pull）。別の Mac で更新したあとに使います。
cd "$(dirname "$0")" || exit 1
echo "============================================"
echo " GitHub から最新を取り込みます"
echo "============================================"
if git pull --rebase; then
  echo ""
  echo "✓ 最新になりました。このウィンドウは閉じて構いません。"
else
  echo ""
  echo "⚠ 取り込みに失敗しました（衝突や未コミットの変更がある可能性）。"
  echo "  先に GitHubへ保存.command で自分の変更を保存してから、もう一度お試しください。"
fi
echo ""
read -n 1 -s -r -p "キーを押すと閉じます…"
