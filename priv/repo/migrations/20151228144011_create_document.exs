defmodule KaifaLi.Repo.Migrations.CreateDocument do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :name, :string
      add :keywords, {:array, :string}
      add :url, :string

      timestamps
    end
    create unique_index(:documents, [:name])

  end
end
