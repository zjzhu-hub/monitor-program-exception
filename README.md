# monitor-program-exception
监控程序是否占用cpu过高小脚本  
Mac os上有个音频程序(coreaudiod)会持续占用大量cpu 不知道是系统bug 还是怎么引起的 也不想升级系统 所以写了个脚本监听那个程序cpu 当持续性占用cpu过高则杀死该进程,杀死该进程后会自动重启 一切恢复正常
