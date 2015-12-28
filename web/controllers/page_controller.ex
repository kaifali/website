defmodule KaifaLi.PageController do
  use KaifaLi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
