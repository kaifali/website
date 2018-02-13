defmodule KaifaLiWeb.API.ServiceView do
  use KaifaLiWeb, :view

  def render("show.json", %{document: document}) do
    %{
      keywords: document.keywords,
      name: document.name,
      url: document.url
    }
  end
end
