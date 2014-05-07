---
layout: post
title: "Lua编程"
description: ""
category: 技术分享
tags: [Lua]
---
{% include JB/setup %}
# Lua 编程
---


* 首先下载`ruby`[安装ruby download](http://rubyinstaller.org/downloads/) ，然后
下载**DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe**。安装完`ruby`后，再安装
`rubyGems`:运行`gem update --system`即可。

* 解压DevKit，然后命令行cd到该目录，运行

<!--break-->

```
 ruby dk.rb init
 ruby dk.rb review 
 ruby dk.rb install
 gem install rdiscount --platform=ruby
```

* Lua C 编程案例

{% highlight c %}
	for(i=0; i<100; i++)
		sync(ni);
{% endhighlight %}
 


