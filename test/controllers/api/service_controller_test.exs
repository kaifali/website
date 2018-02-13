defmodule KaifaLiWeb.API.ServiceControllerTest do
  use KaifaLiWeb.ConnCase

  alias KaifaLi.Document

  test "get a service info by keyword", %{conn: conn} do
    document = Repo.insert! %Document{keywords: ["foo","bar"], name: "Foo", url: "http://example.com"}

    conn =
      conn
      |> get(api_service_path(conn, :show, "foo"))
      |> doc

    body = json_response(conn, 200)
    assert body["name"] == document.name
    assert body["url"] == "http://example.com"
  end
end
