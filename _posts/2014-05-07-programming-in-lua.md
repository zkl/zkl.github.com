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

* Lua和C语言混合编程时，无论C代码是“库代码”还是“应用程序代码”，调用方式都包括Lua
调用C代码和C代码调用Lua函数两部分。无论那种方式参数都是过栈的方式传递。与栈相关
的操作包括获取栈的大小，获取栈中数据，判断数据类型等。

<!--break-->

* 第一种情况Lua调用C代码

* C代码想要被Lua脚本调用必须按照Lua接口中的方式定义，需要将lua\_CFunction类型的函数指针传给Lua就可以，lua_CFunction定义如下

{% highlight c %}
	typedef int (*lua_CFunction) (lua_State *L);
{% endhighlight %}

使用这种格式定义的函数才可以被Lua库识别，函数的返回值表示Lua函数返回值的个数。示例代码如下:

{% highlight c %}
	lua_pushcfunction(L, &cfunction);  /* 函数地址入栈 */
	lua_setglobal(L, "fun"); /* 设置全局变量，内容是刚才入栈的函数地址 */
{% endhighlight %}

cfunction 定义如下

{% highlight c %}
	int cfunction(lua_State * L)
	{
		/* 函数内容 */
		return 0; /* 参数个数 */
	}
{% endhighlight %}

这样就可以在Lua中访问调用fun来访问cfunction函数了，下面给出一个完成的示例代码main.c定义如下

{% highlight c %}
/**
* @file main.c
* @brief lua编程示例代码
* @author Zhang Kunlun(zkl), zkl.1880@gmail.com
* @version 1.0.0
* @date 2014-05-21
*/
#include <stdio.h>
#include "Lua/include/lua.h"
#include "Lua/include/lauxlib.h"
#include "Lua/include/lualib.h"


int fun(lua_State * l)
{
	printf("This function is called by lua");	
	return 0;
}

int main(int argc, char * argv[])
{
	lua_State * l = 0;
	if(argc < 2)
		return -1;

	l = luaL_newstate();
	luaL_openlibs(api->st); /* 打开标准库 */ 
	
	lua_pushcfunction(l, &fun);
	lua_setglobal(l, "fun");

	/* 载入并执行Lua脚本 */
	if(luaL_loadfile(l, argv[1]) || lua_pcall(l, 0, 0, 0))
		printf("%s", lua_tostring(l, -1));

	lua_close(l);
	return 0;
}

{% endhighlight %}

test.lua脚本内容

{% highlight lua %}
print("in test.lua");
fun();
{% endhighlight %}

main.c编译执行过程

{% highlight sh %}
gcc -o test main.c -l lua51
./test test.lua
{% endhighlight %}

未完待续 。。。 

