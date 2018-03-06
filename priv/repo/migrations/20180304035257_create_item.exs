defmodule PhoenixHello.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :status, :integer
      add :name, :string
      add :desc, :string
      add :sn, :string
      add :price, :integer
      add :published_at, :utc_datetime
      add :remark, :json

      timestamps()
    end
  end
end
