defmodule KaifaLiWeb.API.ServiceController do
  use KaifaLiWeb, :controller

  alias KaifaLi.Document

  def show(conn, %{"keyword" => keyword}) do
    query = from(d in Document, where: fragment("? = ANY (?)", ^keyword, d.keywords))

    document = Repo.one!(query)

    render(conn, "show.json", %{document: document})
  end
end
