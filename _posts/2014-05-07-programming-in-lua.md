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

* Lua 调用C函数， 第一个实例实现了一个简化版的正弦函数：
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
 


