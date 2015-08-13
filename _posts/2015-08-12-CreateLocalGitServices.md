---
layout: post
title: "如何配置本地GIT仓库"
description: ""
category: 技术分享
tags: [Git]
---

{% include JB/setup %}
# 如何配置本地GIT仓库
---

示例环境： Ubuntu 14.04 


## 第一步 安装Git工具

安装git命令行工具

```
$ sudo apt-get install git
```

<!--break-->

## 第二步 安装SSH服务

使用ssh的方式上传和下载，安装后关于SSH服务器的配置，请看考相关的文档和说明

```
$ sudo apt-get install openssh-server openssh-client
```

## 第三步 创建Git用户

创建Git专用的用户'git', 这个名字可以随便取。

```
$ sudo useradd git 
```

设置用户git的密码

```
$ sudo passwd git
```

## 第四步 初始化本地版本库

在/srv目录下创建git版本库目录

```
$ sudo git --bare init /srv/sample.git
```

更改版本库所有者

```
$ sudo chown -R git:git /srv/sample.git
```

到目前为止，git版本库已经建立好了，远程可以下载和上传了

使用的地址时 `git@hostname:/srv/sample.git`

登陆时，填写刚才给git设置的密码就可以访问了。

## 第六步 远程下载及提交

```
$ git clone git@hostname:/var/sample.git
$ cd sample
$ echo `date` > readme
$ git add readme
$ git commit -m "add readme file"
$ git push
```

## 第七步 安全问题


## 第八步 其他问题

