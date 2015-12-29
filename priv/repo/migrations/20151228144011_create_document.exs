defmodule KaifaLi.Repo.Migrations.CreateDocument do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :name, :string, null: false
      add :keywords, {:array, :string}, null: false, default: []
      add :url, :string, null: false

      timestamps
    end
    create unique_index(:documents, [:name])

  end
end
