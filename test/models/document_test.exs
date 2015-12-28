defmodule KaifaLi.DocumentTest do
  use KaifaLi.ModelCase

  alias KaifaLi.Document

  @valid_attrs %{keywords: [], name: "some content", url: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Document.changeset(%Document{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Document.changeset(%Document{}, @invalid_attrs)
    refute changeset.valid?
  end
end
