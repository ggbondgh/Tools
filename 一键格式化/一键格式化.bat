:: 用 PowerShell 执行递归格式化命令，确保识别 PowerShell 语法
start powershell -Command "Get-ChildItem -Path . -Recurse -Include *.c,*.cpp,*.h,*.hpp | ForEach-Object { clang-format -i -style=file $_.FullName }"