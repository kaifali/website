defmodule KaifaLiWeb.PageControllerTest do
  use KaifaLiWeb.ConnCase

  test "GET /" do
    conn = get build_conn(), "/"
    assert html_response(conn, 200) =~ "开发哩"
  end
end
