#!/bin/bash
# 该脚本用于开机初始化tmux服务

tmux new -s init -d # 后台创建一个名称为init的会话
tmux rename-window -t "init:1" service # 重命名init会话的第一个窗口名称为service
tmux send -t "init:service" "cd ~/workspace/language/python/;python2.7 server.py" Enter # 切换到指定目录并运行python服务

tmux split-window -t "init:service" # 默认上下分屏
tmux send -t "init:service" 'cd ~/data/louiszhai/node-webserver/;npm start' Enter # 切换到指定目录并运行node服务

# 新建一个名称为tool的窗口
tmux neww -a -n tool -t init # neww等同于new window
tmux send -t "init:tool" "weinre --httpPort 8881 --boundHost -all-" Enter # 运行weinre调试工具

tmux split-window -h -t "init:tool" # 水平分屏
tmux send -t "init:tool" "cd ~/data/tools/AriaNg/dist/;python -m SimpleHTTPServer 10108" Enter # 切换到指定目录并启用aria2 web管理后台