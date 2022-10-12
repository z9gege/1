
build and deploy your cloud hypervisor/container/desktop/dev with onekeystoke diskdumping(demo pics attached)
=====

onekeydevdesk is a system which embeds a "hypervisor engine+docker engine achived transparent vfe and dev/deploy stack" as integrated basic Soc in its minmal core, then bundles multiple OSes/containers based around the core, plus scripts/uilities/managetools related，finally the composed implentmented OS towards the "all in one onekeystoke devdesk" theories.    

 * as the part of onekeydevdesk installation and build script, 1keydd can extends to multiple target models  and customiablity, can be self hosted and packaged into a repo even a "ddhub",for each of your target host/target image combination,for later dd restoring,even it is a full set of dd schedma including img provisioning and editing.  
 * as the part of onekeydevdesk os-bundle core,based on pve,onekeydevdesk implements a transparent ve: it supports single integrated gpu switch freely between host/subos within a host,and "local experience of file sharing and syncing mechanism just as if they are hypermanager pervioned vms" arcoss mateable internet vps os and local vps os entries

> onekeydevdesk is also referred as：1keydd,1keydiskdump,1keydeepindsm,1keydebiandesk,1keydevdeploy,1keydebugdemo,1key desk dock,1key datacenter and desk,1key dir disk,1key deconterized desk,etc ..

project repo url: https://github.com/minlearn/onekeydevdesk 

demo
-----

1keydd installation support dd progress bar inside debian installer（ demo video：https://www.bilibili.com/video/BV1ug411N7tn/ ）  
supports machine models including: az,servarica,oracle/oracle arm,ksle,bwg10g512m,and up to unlimited   
support pre dd debugable verifiable mode,achives up to 90% success rate for linux,80% for other os  
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydd.png)

as one of onekeydevdesk's sub qemu vm OSes,the same windows image can be installed both on uefi/bios vps/bearmetal machines, without any difference and extra processing needed  
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydevdeskwin.png)

as one of onekeydevdesk's sub qemu vm OSes,dsm can be installed on vps, with no kvm-nested required upon host  
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydevdeskdsm.png)

as one of onekeydevdesk's sub qemu vm OSes,osx uses standard full set kvm virtio drivers and bios model， should be installed on a 2c2g vps with kvm-nested (with 1c1.5g/2c2g give to osx, with 2c2g/3c3g give to osx the best),win11 is also supported,cloudosx+cloudwin11=local matedesk  
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydevdeskosx.png)

as part of onekeydevdesk uilities,1keydirdisk supports netdisk in dir-listing manner just inside file explorer
![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/1keydirdisk.png)

getting-started
-----

below are tested under vnc of an Debian and Debian flow Linux vps or local host,centos not recommended  
for amd64,all commands below are avaliable,for arm64,limited command set are avaliable  

基本用法:  

 * 简单前端交互模式  
`wget -qO- 1keydd.com/inst.sh | bash`   

 * 指定安装目标os镜像：deb是纯净debian10,devdeskos,自定义镜像是你的raw系统硬盘格式经过gzip打包后托管的http/https地址  
`wget -qO- 1keydd.com/inst.sh | bash -s - -t deb,devdeskos,或自定gz镜像`  

更多用法:  

 * 指定静态网络配置  
`wget -qO- 1keydd.com/inst.sh | bash -s - -n youripv4,yourmask,yourgateway -t deb,或自定gz镜像`  

 * 进入dump模式：提供blkdevname:ip:port参数形式将作为源端/发送端/连接端/客户端(请自备开启了nc port:保存形态，作为参数的目标端/接收端/本地代理端/守护服务端的被DD机器，并首先开启)  
`wget -qO- 1keydd.com/inst.sh | bash -s - -t dumpblkdevname:sendtoip:sendtoport`   

 * 进入救援/DRYRUN/DEBUG模式,此模式会在进入系统后5分钟后如发现无网络会重启,并进入DD前的正常系统,可作DD前验证,如有网络将在22端口建立ssh，帐密sshd/无密码  
`wget -qO- 1keydd.com/inst.sh | bash -s - -d`  


devdeskos目标安装后，会自动扩展磁盘空间,root密码1keydd，https://xxx:8006为pve口，pve用户名root密码1keydd，默认密码都是root/1keydd，如果是云主机建议开放8000-8100这些端口  
其它镜像在pve的storage->ct templates页可找到，不做说明的情况下，qemu版osx和dsm镜像并不提供开放托管和安装。  

more docs and demos
-----

支持的机型和系统：

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

更多请看项目文档库[《更多特点介绍和自助安装使用文档》](/onekeydevdesk/docs/)部分和hub部分


服务
-----

免费
 * 只提供inst.sh，可一站式解决你DD中大部分问题，去上面仓库，一键DD即可  
`注：仅拥有常见vps和独服机型上DD常见系统能力`  

收费  
 * 加入付费dd群享免费咨询技术支持,+获取指定系统镜像和安装服务1次或解决疑难机型DD服务1次（100元,usdt 16）   
`注：拥有扩展驱动/定制机型服务和获取特殊镜像能力`  
`加如下作者个人TG：简单说明需求或说明来意即可`     

[minlearn_1keydd](https://t.me/minlearn_1keydd)

捐助
 * 打赏我虚拟币：TRX/USDT/BTC/ETH: [TZ6YPtsojLCJEifNpwm38mmiq7T2gkhGKj](https://trx.tokenview.com/cn/address/TZ6YPtsojLCJEifNpwm38mmiq7T2gkhGKj)    
`怎么捐助: 用支持tron链的钱包APP扫描下列二维码`  

![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/donate.png)

-----


此项目关联 https://github.com/minlearn/minlearnprogramming/tree/master/p/onekeydevdeskopen/ ，它是为配合我在《minlearnprogramming》最小编程/统一开发的想法的一个支持项目。  
本项目长期保存

![](https://github.com/minlearn/minlearnprogramming/tree/master/p/_contents/assets/intro/logo123zd15sz150.png)
