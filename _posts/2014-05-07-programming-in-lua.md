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

* Lua脚本和C语言交互是，参数全部通过栈的方式传递。与栈相关的操作包括获取栈的大小，
获取栈中数据， 判断数据类型等。
Lua和C交互，C代码是“库代码”还是“应用程序代码”，都包括Lua 调用 C 代码 和 C 代码调
用Lua函数两部分。

{% highlight c %}
static int l_sin(lua_State *L)
{
	double d = lua_tonumber(L, 1); /* 获取参数 */
	lua_pushnumber(L, sin(d)); /* 压入结果 */
	return 1; /* 返回结果数量 */ 
}
{% endhighlight %}


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
 


