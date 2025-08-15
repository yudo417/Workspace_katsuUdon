#!/bin/bash

set -e

# 簡単な色付き出力
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

trap 'if [ $? -eq 0 ]; then echo -e "${GREEN}✅ 成功${NC}"; else echo -e "${RED}❌ 失敗${NC}"; fi' EXIT

if [ ! -d "node_modules" ]; then
  echo "Installing dependencies..."
  npm install
fi

# Expo 起動
echo "Starting iOS expo server..."
npx expo start
