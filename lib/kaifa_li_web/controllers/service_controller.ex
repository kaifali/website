defmodule KaifaLi.ServiceController do
  use KaifaLiWeb, :controller

  alias KaifaLi.Document

  def show(conn, %{"keyword" => keyword}) do
    query = from(d in Document, where: fragment("? = ANY (?)", ^keyword, d.keywords))

    document = Repo.one!(query)
    redirect(conn, external: document.url)
  end
end
