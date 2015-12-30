defmodule KaifaLi.Router do
  use KaifaLi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :admin do
    plug BasicAuth, Application.get_env(:kaifa_li, :admin_basic_auth)
  end

  scope "/", KaifaLi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/services/:keyword", ServiceController, :show
  end

  scope "/admin", KaifaLi do
    pipe_through :browser
    pipe_through :admin

    resources "/documents", DocumentController
  end

  # Other scopes may use custom stacks.
  # scope "/api", KaifaLi do
  #   pipe_through :api
  # end
end
