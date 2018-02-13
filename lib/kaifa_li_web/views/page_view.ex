defmodule KaifaLiWeb.PageView do
  use KaifaLiWeb, :view

  def document_mappings(documents) do
    Enum.flat_map(documents, fn document ->
      Enum.map(document.keywords, fn keyword ->
        {keyword, document.name}
      end)
    end)
  end
end
