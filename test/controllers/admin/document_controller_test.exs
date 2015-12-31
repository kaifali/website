defmodule KaifaLi.Admin.DocumentControllerTest do
  use KaifaLi.ConnCase

  alias KaifaLi.Document

  @valid_attrs %{keywords_list: "foo,bar", name: "some content", url: "http://example.com"}
  @invalid_attrs %{}

  @username Application.get_env(:kaifa_li, :admin_basic_auth)[:username]
  @password Application.get_env(:kaifa_li, :admin_basic_auth)[:password]

  defp using_basic_auth(conn, username, password) do
    header_content = "Basic " <> Base.encode64("#{username}:#{password}")
    conn |> put_req_header("authorization", header_content)
  end

  test "lists all entries on index" do
    conn = conn()
            |> using_basic_auth(@username, @password)
            |> get admin_document_path(conn, :index)

    assert html_response(conn, 200) =~ "Listing documents"
  end

  test "renders form for new resources" do
    conn = conn()
            |> using_basic_auth(@username, @password)
            |> get admin_document_path(conn, :new)

    assert html_response(conn, 200) =~ "New document"
  end

  test "creates resource and redirects when data is valid" do
    conn = conn()
            |> using_basic_auth(@username, @password)
            |> post admin_document_path(conn, :create), document: @valid_attrs

    assert redirected_to(conn) == admin_document_path(conn, :index)
  end

  test "does not create resource and renders errors when data is invalid" do
    conn = conn()
            |> using_basic_auth(@username, @password)
            |> post admin_document_path(conn, :create), document: @invalid_attrs

    assert html_response(conn, 200) =~ "New document"
  end

  test "shows chosen resource" do
    document = Repo.insert! %Document{keywords_list: "foo,bar", name: "Foo", url: "http://example.com"}

    conn = conn()
            |> using_basic_auth(@username, @password)
            |> get admin_document_path(conn, :show, document)

    assert html_response(conn, 200) =~ "Show document"
  end

  test "renders page not found when id is nonexistent" do
    assert_error_sent 404, fn ->
      conn = conn()
              |> using_basic_auth(@username, @password)
              |> get admin_document_path(conn, :show, -1)
    end
  end

  test "renders form for editing chosen resource" do
    document = Repo.insert! %Document{keywords_list: "foo,bar", name: "Foo", url: "http://example.com"}

    conn = conn()
            |> using_basic_auth(@username, @password)
            |> get admin_document_path(conn, :edit, document)

    assert html_response(conn, 200) =~ "Edit document"
  end

  test "updates chosen resource and redirects when data is valid" do
    document = Repo.insert! %Document{keywords_list: "foo,bar", name: "Foo", url: "http://example.com"}

    conn = conn()
            |> using_basic_auth(@username, @password)
            |> put admin_document_path(conn, :update, document), document: @valid_attrs

    assert redirected_to(conn) == admin_document_path(conn, :show, document)
  end

  test "does not update chosen resource and renders errors when data is invalid" do
    document = Repo.insert! %Document{keywords_list: "foo,bar", name: "Foo", url: "http://example.com"}

    conn = conn()
            |> using_basic_auth(@username, @password)
            |> put admin_document_path(conn, :update, document), document: @invalid_attrs

    assert html_response(conn, 200) =~ "Edit document"
  end

  test "deletes chosen resource" do
    document = Repo.insert! %Document{keywords_list: "foo,bar", name: "Foo", url: "http://example.com"}

    conn = conn()
            |> using_basic_auth(@username, @password)
            |> delete admin_document_path(conn, :delete, document)

    assert redirected_to(conn) == admin_document_path(conn, :index)
    refute Repo.get(Document, document.id)
  end
end
