param(
    [string]$msg = "Update code"
)

Write-Host "`n🐱 Pet Memory - One-click Deploy Script"
Write-Host "==============================================`n" -ForegroundColor Cyan

Write-Host "🔄 Syncing source code..." -ForegroundColor Yellow
Copy-Item "源代码\主应用.html" "index.html" -Force
Write-Host "✅ Sync completed!`n" -ForegroundColor Green

Write-Host "📤 Committing changes..." -ForegroundColor Yellow
git add .
git commit -m $msg
Write-Host "✅ Commit completed!`n" -ForegroundColor Green

Write-Host "🚀 Pushing to GitHub..." -ForegroundColor Yellow
git push origin main
Write-Host "✅ Push completed!`n" -ForegroundColor Green

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "🎉 Deployment completed!" -ForegroundColor Green
Write-Host "Waiting for GitHub Pages auto-deploy (about 1-5 minutes)"
Write-Host "Access URL: https://zhikun-zhang.github.io/pet-memory/"
Write-Host "==============================================`n"
