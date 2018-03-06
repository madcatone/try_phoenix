defmodule PhoenixHelloWeb.ItemController do
  use PhoenixHelloWeb, :controller
  alias PhoenixHello.Repo
  alias PhoenixHello.Item

  def index(conn, _params) do
    render conn, "index.html"
  end
end
