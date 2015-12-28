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

KaifaLi.Repo.insert!(
  %KaifaLi.Document{ name: "七牛", keywords: ["qiniu"], url: "http://developer.qiniu.com/" }
)
