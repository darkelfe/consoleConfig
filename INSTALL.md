Configure git to use HTTP port
====
vim ~/.ssh/config

> Host github.com  
> &nbsp;&nbsp;&nbsp;&nbsp;Hostname ssh.github.com  
> &nbsp;&nbsp;&nbsp;&nbsp;Port 443

chmod 600 ~/.ssh/config  
chown $USER ~/.ssh/config

Clone repository
====
git clone git@github.com:darkelfe14728/consoleConfig.git

Download submodules
====
cd consoleConfig  
git submodule init  
git submodule update

Download vim bundles
=====
vim  
&nbsp;&nbsp;&nbsp;&nbsp;:PluginInstall
