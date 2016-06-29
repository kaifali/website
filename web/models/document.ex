defmodule KaifaLi.Document do
  use KaifaLi.Web, :model

  schema "documents" do
    field :name, :string
    field :keywords, {:array, :string}
    field :url, :string

    field :keywords_list, :string, virtual: true

    timestamps
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :keywords_list, :url])
    |> validate_required([:name, :keywords_list, :url])
    |> unique_constraint(:name)
    |> set_keywords
  end

  def fetch_keywords_list(changeset) do
    keyword = Ecto.Changeset.get_field(changeset, :keywords)
    if keyword do
      keyword |> Enum.join(", ")
    end
  end

  defp set_keywords(changeset) do
    keywords_list = get_change(changeset, :keywords_list)

    if keywords_list do
      put_change(changeset, :keywords, String.split(keywords_list, ","))
    else
      changeset
    end
  end
end
