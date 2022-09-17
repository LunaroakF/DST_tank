--Mod基础信息 名字/介绍/作者/版本
name = "编制着碎片"
description = "另一个世界与这个世界正在被慢慢缝合在了一起\n我们只需要......慢慢的等待......等待这个破碎的镜子被缝补起来...?"
author = "陌呰 & 狐冥栎 & 何狐"
version = "1.0.1"

--Mod链接
forumthread = ""

--Mod API版本
api_version = 10

--是否兼容饥荒联机版
dst_compatible = true

--是否兼容饥荒单机版
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

--是否为服务器Mod
all_clients_require_mod = true 

--Mod图标
icon_atlas = "modicon.xml"
icon = "modicon.tex"

--服务器列表上显示的mod标签
server_filter_tags = {
"character",
}

--Mod可控设置
configuration_options =
{
  {
    name = "healthcfg",
    label = "生命值设置",
    options =
    {
      {description = "25", data = 25}, 
      {description = "50", data = 50}, 
      {description = "75", data = 75}, 
      {description = "100", data = 100}, 
      {description = "200", data = 200}, 
      {description = "250", data = 250}, 
      {description = "300(默认)", data = 300},
      {description = "350", data = 350},
      {description = "400", data = 400},
      
    },
    default = 300,
  },
}

--configuration_options = {}
