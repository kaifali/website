defmodule KaifaLi.Document do
  use KaifaLiWeb, :model

  schema "documents" do
    field(:name, :string)
    field(:keywords, {:array, :string})
    field(:url, :string)

    field(:keywords_list, :string, virtual: true)

    timestamps()
  end

  @required_fields ~w(name keywords_list url)a
  @optional_fields ~w()a

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(struct, attrs \\ %{}) do
    struct
    |> cast(attrs, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:name)
    |> set_keywords
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
