param(
    [string]$msg = "更新代码"
)

Write-Host "`n🐱 土豆拾光 - 一键部署脚本"
Write-Host "==============================================`n" -ForegroundColor Cyan

Write-Host "🔄 正在同步源代码..." -ForegroundColor Yellow
Copy-Item "源代码\主应用.html" "index.html" -Force
Write-Host "✅ 同步成功！`n" -ForegroundColor Green

Write-Host "📤 正在提交代码..." -ForegroundColor Yellow
git add .
git commit -m $msg
Write-Host "✅ 提交成功！`n" -ForegroundColor Green

Write-Host "🚀 正在推送到GitHub..." -ForegroundColor Yellow
git push origin main
Write-Host "✅ 推送成功！`n" -ForegroundColor Green

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "🎉 部署完成！" -ForegroundColor Green
Write-Host "等待GitHub Pages自动部署（约1-5分钟）"
Write-Host "访问地址：https://zhikun-zhang.github.io/pet-memory/"
Write-Host "==============================================`n"