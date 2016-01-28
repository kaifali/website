defmodule KaifaLi.API.ServiceView do
  use KaifaLi.Web, :view

  def render("show.json", %{document: document}) do
    %{
      keywords: document.keywords,
      name: document.name,
      url: document.url
    }
  end
end
