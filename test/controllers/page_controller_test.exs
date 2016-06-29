defmodule KaifaLi.PageControllerTest do
  use KaifaLi.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "开发哩"
  end
end
