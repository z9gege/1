
省事一键DD云虚拟机云容器云桌面云开发(带镜像有演示)
=====

oonekeydevdesk是一套可在线一键安装系统的脚本和方案1keydd，及一套增强的虚拟机管理器系统，加一套学习编程的软硬选型（定位于掌上蓝牙键盘或移动设备输入+TEXTUI IDE服务端）。   

 * 作为onekeydevdesk的安装脚本部分，1keydd支持扩展多机型安装多OS类型，支持自打包，自托管，可将你对应机型包括镜像在内的整个DD方案构建为一个可供DD安装的在线仓库,甚至包括生成编辑镜像在内的全套dd支持方案  
 * 作为onekeydevdesk的围绕虚拟机管理器为多OS支持部分核心，基于pve+vdi增强元素，devdeskos实现了一套透明ve,给pve加入了云存储同步app和社交app功能，还集成了一套云neovim服务端IDE面板（作为pve的developermode存在），利用neovim模拟了一套全能沉浸碎片化的IDE。    

> onekeydevdesk也指代：1keydd,1keydiskdump,1keydeepindsm,1keydebiandesk,1keydevdeploy,1keydebugdemo,1key desk dock,1key datacenter and desk,1key dir disk,1key deconterized desk,1kilometer distance to dev,1key for dev over dev(second dev),etc ..

项目地址：https://github.com/minlearn/onekeydevdesk 

演示
-----

1keydd支持双进度显示(vnc,web)，支持双架构amd,arm，支持自扩硬盘和智能嵌入静态ip参数(包括/32这样的特殊掩码支持)，支持dd前调试验证模式，可达成90%的linux成功率,80%的other os成功率  
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydd.png)  

1keydd支持一键dd多种os，如，支持win uefi/bios gpt二合一兼容，无视机型差别和无须手动，毫无修改毫无感知地以同一效果运行,支持dsm直接安装在云主机上，无须嵌套虚拟化,支持osx使用标准全套kvm驱动和bios机型配置，需要安装在支持嵌套虚拟化的2C2G以上云主机上（1c1.5g/2c2g给osx, 2c2g/3c3g给osx母鸡留1c1g最好），与本地组matedesk，win11类同。  
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydevdeskwin.png)
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydevdeskdsm.png)
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydevdeskosx.png)

devdeskos演示：
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydirdisk.png)

1keydd+devdeskos支持扩展，包括az,servarica,oracle/oracle arm,ksle,bwg10g512m,及无限增加的机型和系统：   

| 机型             | 是否支持裸机win | 是否支持裸机linux/devdeskos | 是否支持裸机osx | 是否支持pveosx | 是否支持静态ip嵌入 | 是否支持win中d win |
| :------:        | :-: | :-: | :-: | :-: | :-: | :-: | 
| azure b1s       |  √  |  √  |  ×  |  ×  |  √  |  ×  |
| spartan         |  √  |  √  |  ×  |  ×  |  √  |  ×  |
| ikoula c-mem    |  √  |  √  |  ×  |  √  |  √  |  ×  |
| ksle/ksleplus   |  √  |  √  |  ×  |  √  |  √  |  ×  |
| SYS-2-SSD-64    |  √  |  √  |  ×  |  √  |  √  |  ×  |
| gcp             |  √  |  √  |  ×  |  ×  |  √  |  ×  |
| linode          |  √  |  √  |  ×  |  ×  |  √  |  ×  |
| orc amd         |  √  |  √  |  ×  |  ×  |  √  |  ×  |
| orc arm         |  ×  |  √  |  ×  |  ×  |  √  |  ×  |
| ...             | ... | ... | ... | ... | ... | ... |

完整支持查看isp supports页和ddhub页，更多演示和特性请看和项目文档库[《更多文档》](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/onekeydevdesk/docs/)部分

下载安装及用法
-----

以下尽量在debian系linux云主机vnc界面下或本地虚拟机下完成,centos不推荐  

基本用法:  

 * 简单前端交互模式  
`wget -qO- 1keydd.com/inst.sh | bash`   

 * 指定安装目标os镜像：deb是纯净debian10,devdeskos,自定义镜像是你的raw系统硬盘格式经过gzip打包后托管的http/https地址（ 安装演示：https://www.bilibili.com/video/BV1ug411N7tn/ https://www.bilibili.com/video/BV17B4y1b79Y/ ）  
`wget -qO- 1keydd.com/inst.sh | bash -s - -t deb,devdeskos,或自定gz镜像`  

目标os安装后，会自动扩展磁盘空间和调整网络,用户名为root/admininistraor，密码为1keydd，不做说明的情况下，qemu版osx和dsm镜像并不提供开放托管和安装。  

更多用法:  

 * 指定debian镜像源  
`wget -qO- 1keydd.com/inst.sh | bash -s - -m http/https/xxxx ......`  

 * 指定第一张网卡名  
`wget -qO- 1keydd.com/inst.sh | bash -s - -i enp0s1 ......`  

 * 指定静态网络配置（ 安装演示：https://www.bilibili.com/video/BV1pr4y1j75w/ ）  
`wget -qO- 1keydd.com/inst.sh | bash -s - -n ipv4,netmask,gateway .....`  

 * 指定第一个硬盘名(你也可以填分区名把镜像d到仅一个分区里)  
`wget -qO- 1keydd.com/inst.sh | bash -s - -p /dev/nvme0n1 ......`  

 * 进入dump模式：提供blkdevname:ip:port参数形式将作为源端/发送端/连接端/客户端(请自备开启了nc port:保存形态，作为参数的目标端/接收端/本地代理端/守护服务端的被DD机器，并首先开启)  
`wget -qO- 1keydd.com/inst.sh | bash -s - -t dumpblkdevname:sendtoip:sendtoport`   

 * 进入救援/DRYRUN/DEBUG模式,此模式会在进入系统后5分钟后如发现无网络会重启,并进入DD前的正常系统,可作DD前验证,如有网络将在22端口建立ssh，帐密sshd/无密码  
`wget -qO- 1keydd.com/inst.sh | bash -s - -d`  

自托管1keydd:  

 * 通过git仓库:  
`fork本仓库后,新的debian镜像源将变成https://github.com/你的用户名/onekeydevdesk/raw/master'`  
`或修改inst.sh头二行debian镜像源地址export autoDEBMIRROR0,export autoDEBMIRROR1为你的仓库对应debian镜像源地址,或修改export FORCEMIRROR指定为新的镜像源地址`  

 * 通过docker:  
`docker pull minlearn/onekeydevdesk`  
`docker run -d --name myonekeydevdesk -e m=你的新debian镜像源地址 -p 80:80 minlearn/onekeydevdesk`  

建立托管后，用新的inst.sh脚本地址调用脚本即可  

服务
-----

免费
 * 只提供inst.sh，可一站式解决你DD中大部分问题，去上面仓库，一键DD即可  
`注：仅拥有常见vps和独服机型上DD常见系统能力`  

收费  
 * 获取指定系统镜像和安装服务1次或解决疑难机型DD服务1次（50元,usdt 10）   
 * 加入付费DD群享免费咨询技术支持（100元,usdt 20）   
`注：加入付群DD群拥有终生免费DD咨询,扩展驱动/定制机型服务和获取特殊镜像能力`  
`加如下作者个人TG：简单说明需求或说明来意即可`     

[minlearn_1keydd](https://t.me/minlearn_1keydd)

捐助
 * 打赏我任意数值虚拟币,20usdt可加入付费DD群享免费咨询技术支持    
`怎么捐助: 用支持tron链的钱包APP扫描下列钱包地址，或二维码`  

TRX/USDT/BTC/ETH: [TZ6YPtsojLCJEifNpwm38mmiq7T2gkhGKj](https://trx.tokenview.com/cn/address/TZ6YPtsojLCJEifNpwm38mmiq7T2gkhGKj)
![](https://github.com/minlearn/minlearnprogramming/raw/master/_build/p/assets/onekeydevdesk/donate.png)

-----


此项目关联 https://github.com/minlearn/minlearnprogramming/raw/master/p/onekeydevdeskopen/ ，同时它是为配合我在《minlearnprogramming》最小编程/统一开发的想法的一个支持项目。作为一套"虚拟机管理器"到系统最小核心，及由基于此核心+入devops，并相关管理工具和相关脚本，最终组合实现的一套"一键开发桌面理念"系统存在。  

本项目长期保存

![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/logo123zd15sz150.png)
