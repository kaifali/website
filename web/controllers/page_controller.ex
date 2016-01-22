defmodule KaifaLi.PageController do
  use KaifaLi.Web, :controller

  alias KaifaLi.Document

  def index(conn, _params) do
    documents = Repo.all(Document)
    render conn, "index.html", documents: documents
  end
end
