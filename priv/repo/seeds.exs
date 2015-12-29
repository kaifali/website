# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     KaifaLi.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias KaifaLi.Repo
alias KaifaLi.Document

Repo.insert!(%Document{name: "高德 LBS 开放平台", keywords: ["amap", "gaode"], url: "http://lbs.amap.com/api"})
Repo.insert!(%Document{name: "APICloud", keywords: ["apicloud"], url: "http://docs.apicloud.com"})
Repo.insert!(%Document{name: "百度地图", keywords: ["baidumap", "baiduditu"], url: "http://developer.baidu.com/map/index.php"})
Repo.insert!(%Document{name: "BugHD", keywords: ["bughd"], url: "http://bughd.com/doc/index"})
Repo.insert!(%Document{name: "豆瓣", keywords: ["douban"], url: "http://developers.douban.com"})
Repo.insert!(%Document{name: "GitCafé", keywords: ["gitcafe"], url: "https://api.gitcafe.com/apidoc"})
Repo.insert!(%Document{name: "JPush", keywords: ["jpush"], url: "http://docs.jpush.io"})
Repo.insert!(%Document{name: "快递100", keywords: ["kuaidi100"], url: "http://www.kuaidi100.com/openapi/api_post.shtml"})
Repo.insert!(%Document{name: "LeanCloud", keywords: ["leancloud"], url: "https://leancloud.cn/docs"})
Repo.insert!(%Document{name: "Mob", keywords: ["mob"], url: "http://wiki.mob.com"})
Repo.insert!(%Document{name: "Ping++", keywords: ["pingxx", "pingpp", "ping++"], url: "https://pingxx.com/guidance"})
Repo.insert!(%Document{name: "七牛", keywords: ["qiniu"], url: "http://developer.qiniu.com"})
Repo.insert!(%Document{name: "腾讯地图开放平台", keywords: ["qqmap", "qqditu"], url: "http://lbs.qq.com"})
Repo.insert!(%Document{name: "QQ 互联", keywords: ["qqconnect"], url: "http://wiki.connect.qq.com"})
Repo.insert!(%Document{name: "腾讯开放平台", keywords: ["qqopen"], url: "http://wiki.open.qq.com/wiki"})
Repo.insert!(%Document{name: "融云", keywords: ["rongcloud"], url: "http://www.rongcloud.cn/docs"})
Repo.insert!(%Document{name: "Ruby China", keywords: ["rubychina"], url: "https://ruby-china.org/api"})
Repo.insert!(%Document{name: "Teambition", keywords: ["teambition"], url: "https://docs.teambition.com"})
Repo.insert!(%Document{name: "UCloud", keywords: ["ucloud"], url: "https://docs.ucloud.cn/api/index.html"})
Repo.insert!(%Document{name: "友盟", keywords: ["umeng"], url: "http://dev.umeng.com"})
Repo.insert!(%Document{name: "又拍云", keywords: ["upyun"], url: "http://docs.upyun.com"})
Repo.insert!(%Document{name: "微信公众平台", keywords: ["wechatmp", "weixinmp"], url: "http://mp.weixin.qq.com/wiki/home/index.html"})
Repo.insert!(%Document{name: "微信开放平台", keywords: ["wechatopen", "weixinopen"], url: "https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&lang=zh_CN&tab=dev"})
Repo.insert!(%Document{name: "微博", keywords: ["weibo"], url: "http://open.weibo.com/wiki/首页"})
Repo.insert!(%Document{name: "云片网络", keywords: ["yunpian"], url: "http://www.yunpian.com/4.0/api/howto.html"})
