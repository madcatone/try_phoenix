defmodule PhoenixHelloWeb.Api.V1.ItemView do
  use PhoenixHelloWeb, :view

  def render("index.json", %{items: items}) do
    %{data: render_many(items, PhoenixHelloWeb.Api.V1.ItemView, "item.json")}
  end

  def render("show.json", %{item: item}) do
    %{data: render_one(item, PhoenixHelloWeb.Api.V1.ItemView, "item.json")}
  end

  def render("item.json", %{item: item}) do
    %{
      name: item.name,
      desc: item.desc,
      status: item.status,
      sn: item.sn,
      price: item.price,
      published_at: item.published_at,
      remark: item.remark,
    }
  end
end