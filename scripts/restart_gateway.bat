@echo off
echo [%date% %time%] nanobot网关重启脚本
echo ========================================

echo 1. 检查端口18790的监听进程...
set GATEWAY_PID=
for /f "tokens=5" %%i in ('netstat -ano ^| findstr :18790') do (
    echo   发现端口18790监听进程PID: %%i
    set GATEWAY_PID=%%i
)

if not defined GATEWAY_PID (
    echo   端口18790无监听进程，尝试查找网关进程...
    for /f "tokens=2 delims=," %%i in ('wmic process where "name='nanobot.exe' and commandline like '%%gateway%%'" get processid^,commandline /format:csv ^| findstr nanobot.exe 2^>nul') do (
        echo   发现网关进程PID: %%i
        set GATEWAY_PID=%%i
    )
)

if defined GATEWAY_PID (
    echo 2. 停止网关进程(PID: %GATEWAY_PID%)...
    taskkill /PID %GATEWAY_PID% /F >nul 2>&1
    if errorlevel 1 (
        echo   停止失败，尝试强制停止所有nanobot网关进程...
        taskkill /IM nanobot.exe /F >nul 2>&1
    )
    timeout /t 3 >nul
    echo   网关已停止
) else (
    echo 2. 未找到运行的网关进程
)

echo 3. 启动新的网关服务(后台模式)...
echo   正在启动: nanobot gateway --port 18790
start /B "nanobot-gateway" nanobot gateway --port 18790

if errorlevel 1 (
    echo   [错误] 网关启动失败
    exit /b 1
)

echo 4. 等待网关初始化...
timeout /t 5 >nul

echo 5. 检查网关端口(18790)...
netstat -ano | findstr :18790 >nul
if errorlevel 1 (
    echo   [警告] 网关端口未监听，网关可能启动失败
) else (
    echo   [成功] 网关已启动并在端口18790监听
)

echo ========================================
echo [%date% %time%] 重启脚本执行完成
echo 提示: 网关已在后台运行，不会显示新窗口
echo       要停止网关，请运行: taskkill /IM nanobot.exe /F