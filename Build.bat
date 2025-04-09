@echo off
:: 设置 VS 2022 环境变量
call "%ProgramFiles%\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" ARM64

:: 编译
cl.exe main.cpp fun.cpp /EHsc /Fe:Program.exe

:: 检查是否编译成功
if %ERRORLEVEL% neq 0 (
    echo 编译失败！
    exit /b 1
)
