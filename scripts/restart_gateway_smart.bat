@echo off
echo [%date% %time%] 重启nanobot网关服务...

REM 设置工作目录（nanobot配置可能需要）
cd /d "C:\Users\Administrator\.nanobot\workspace"

REM 检查端口18790是否被占用
netstat -ano | findstr :18790 >nul
if %errorlevel% equ 0 (
    echo 端口18790被占用，正在停止相关进程...
    for /f "tokens=5" %%a in ('netstat -ano ^| findstr :18790') do (
        echo 停止进程PID: %%a
        taskkill /PID %%a /F >nul 2>&1
    )
    timeout /t 3 >nul
)

REM 启动网关服务（在新窗口中运行）
echo 启动nanobot网关（新窗口）...
start "nanobot-gateway" /D "C:\Users\Administrator\.nanobot\workspace" nanobot gateway --port 18790

REM 等待网关初始化
echo 等待网关启动...
timeout /t 5 >nul

REM 检查端口监听
netstat -ano | findstr :18790 >nul
if %errorlevel% equ 0 (
    echo ✅ 网关服务启动成功，端口18790已监听
) else (
    echo ❌ 网关服务启动失败，请检查网关日志
    echo 提示：网关可能在新窗口中显示错误信息
)

REM 返回当前目录
cd /d "%~dp0"