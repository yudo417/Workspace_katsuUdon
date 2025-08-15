set -e

echo -e "developブランチから最新のコードを取得します..."

git checkout develop

if git pull origin develop; then
    echo -e "✅ developブランチから最新のコードを取得しました"
else 
    echo -e "❌ developブランチから最新のコードを取得に失敗しました"
    exit 1
fi

