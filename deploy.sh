#!/bin/bash
# 土豆拾光 - 一键部署脚本
# 使用方法：bash deploy.sh

echo "🐱 开始部署土豆拾光..."

# 创建部署目录
mkdir -p dist

# 复制文件到部署目录
echo "📦 复制文件..."
cp "源代码/主应用.html" "dist/index.html"
cp "源代码/反馈查看器.html" "dist/feedback.html"
cp "源代码/404.html" "dist/404.html"

# 创建 .nojekyll 文件（避免 GitHub Pages 忽略下划线开头的文件）
touch dist/.nojekyll

echo "✅ 文件复制完成！"
echo ""
echo "📋 部署步骤："
echo "1. 创建 GitHub 仓库"
echo "2. 将 dist/ 目录上传到仓库"
echo "3. 在仓库 Settings -> Pages 中配置"
echo "4. 访问地址：https://用户名.github.io/仓库名/"
echo ""
echo "🎉 部署准备完成！"