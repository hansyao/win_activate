# one-click activate your win10/11 or MS office
# 一键激活window 10/11 or MS Office

paste below command line in powershell then press enter. then follow the prompt to activate your win10/11 or MS office \
将下面整行命令复制到powershell窗口按回车键，会自动下载并运行激活脚本，按激活窗口操作即可激活win10/11或MS office
```PowerShell 
Invoke-WebRequest "https://raw.githubusercontent.com/hansyao/win_activate/main/win_activate.ps1" | .\win_activate.ps1
```

core activation scripts contributed by [massgravel/Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts) \
核心激活脚本来自 [massgravel/Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts)

pure green scripts without any harmful \
纯绿色激活脚本，无任何病毒和残留文件

this script is only to implement `download->unzip->run activation script` \
本脚本仅实现 `下载->解压->运行脚本` 的功能
