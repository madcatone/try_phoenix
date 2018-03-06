defmodule PhoenixHello.Item do
  # use PhoenixHello.Web, :model
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query
  alias PhoenixHello.Item

  schema "items" do
    field :status, :integer
    field :name, :string
    field :desc, :string
    field :sn, :string
    field :price, :integer
    field :published_at, :utc_datetime
    field :remark

    timestamps()
  end

  # @required_fields ~w(name desc)
  @optional_fields ~w(name desc price sn status published_at remark)a

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @optional_fields) # 白名單？
    |> validate_required([:name, :desc]) # 驗證欄位
  end
end
