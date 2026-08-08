@echo off
chcp 65001 >nul
title Astro 博客服务器
cd /d "%~dp0"
echo ========================================
echo  正在启动博客服务器，请稍候...
echo  启动后浏览器访问: http://localhost:4321
echo  按 Ctrl+C 可停止服务器
echo ========================================
bun dev
pause