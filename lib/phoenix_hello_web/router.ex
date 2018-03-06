defmodule PhoenixHelloWeb.Router do
  use PhoenixHelloWeb, :router

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

  scope "/api", PhoenixHelloWeb.Api do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      # resources "/images",  ImageController
      # resources "/reviews", ReviewController
      # resources "/users",   UserController
      resources "/items", ItemController
    end
  end

  scope "/", PhoenixHelloWeb do
    pipe_through :browser # Use the default browser stack
    # pipe_through :api

    get "/", PageController, :index
    resources "/items", ItemController
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixHelloWeb do
  #   pipe_through :api
  # end
end
