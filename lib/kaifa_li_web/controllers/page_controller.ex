defmodule KaifaLiWeb.PageController do
  use KaifaLiWeb, :controller

  alias KaifaLi.Document

  def index(conn, _params) do
    documents = Repo.all(Document)
    render(conn, "index.html", documents: documents)
  end
end
