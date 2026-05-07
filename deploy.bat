@echo off
chcp 65001 >nul
echo ==============================================
echo 🐱 土豆拾光 - 一键部署脚本
echo ==============================================
echo.

echo 🔄 正在同步源代码...
copy "源代码\主应用.html" "index.html"
if %errorlevel% equ 0 (
    echo ✅ 同步成功！
) else (
    echo ❌ 同步失败！
    pause
    exit /b 1
)

echo.
set /p commit_msg=请输入提交信息（如：修复了XXX问题）：
if not defined commit_msg (
    set commit_msg=更新代码
)

echo.
echo 📤 正在提交代码...
git add .
git commit -m "%commit_msg%"
if %errorlevel% equ 0 (
    echo ✅ 提交成功！
) else (
    echo ❌ 提交失败！
    pause
    exit /b 1
)

echo.
echo 🚀 正在推送到GitHub...
git push origin main
if %errorlevel% equ 0 (
    echo ✅ 推送成功！
    echo.
    echo ==============================================
    echo 🎉 部署完成！
    echo 等待GitHub Pages自动部署（约1-5分钟）
    echo 访问地址：https://zhikun-zhang.github.io/pet-memory/
    echo ==============================================
) else (
    echo ❌ 推送失败！
    pause
    exit /b 1
)

pause