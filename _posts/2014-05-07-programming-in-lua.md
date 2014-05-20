---
layout: post
title: "Lua编程 - C API"
description: ""
category: 技术分享
tags: [Lua]
---
{% include JB/setup %}
# Lua编程 - C API
---

* Lua和C交互，无论C代码是“库代码”还是“应用程序代码”，调用方式都包括Lua调用C代码
和C代码调用Lua函数两部分。

* Lua脚本和C语言交互时，参数全部通过栈的方式传递。与栈相关的操作包括获取栈的大小，
获取栈中数据，判断数据类型等。

* 第一种情况Lua调用C代码

* C代码想要被Lua脚本调用必须按照Lua接口中的方式定义，lua_CFunction函数指针定义如
下
{% highlight c %}
	typedef int (*lua_CFunction) (lua_State *L);
{% endhighlight %}
使用这种格式定义的函数才可以被Lua库识别。示例代码如下:
{% highlight c %}
	lua_pushcfunction(L, &cfunction);  /* 函数地址入栈 */
	lua_setglobal(L, "fun"); /* 设置全局变量，内容是刚才入栈的函数地址 */
{% endhighlight %}
这样就可以在Lua中访问调用fun来访问cfunction函数了




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

* Lua 代码 
{% highlight lua %}
	for i=0; 100; do
		sync(ni);
	end
{% endhighlight %}
 


