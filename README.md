# Tmux config

该项目主要用于记录tmux的配置文件，以及其开机启动服务的脚本。

## Clone

```
mkdir ~/.tmux
git clone git@github.com:Louiszhai/tmux.git ~/.tmux/tmux-config
```

## Install

```
ln -s ~/.tmux/tmux-config/.tmux.conf ~/.tmux.conf
```

## Start web server while mac restart

首先，指定 `init.sh` 脚本权限为可执行。

```bash
chmod u+x ~/.tmux/tmux-config/init.sh
```

然后，打开 `系统偏好设置` - `用户与群组` - `登录项`，点击添加按钮 `+`，选择 `init.sh` 脚本，最终效果如下：

![](http://louiszhai.github.io/docImages/tmux09.png)

至此，Mac开机将自动运行`init.sh`脚本，自动启用web服务器。

## License

Released under [MIT](http://rem.mit-license.org/)  LICENSE.