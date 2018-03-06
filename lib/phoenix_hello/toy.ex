defmodule PhoenixHello.Toy do
  # use PhoenixHello.Web, :model
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query
  alias PhoenixHello.Toy
  alias PhoenixHello.RepoMysql

  schema "toys" do
    # field :id, :integer
    field :sn, :string
    field :name, :string
    field :description
    field :status, :integer
    field :cost_price, :decimal
    field :sell_price, :decimal
    field :purchase_price, :decimal
    field :kind, :integer
    field :barcode, :string
    field :is_part, :integer
    field :cname, :string
    field :part_desc, :string
    field :target_desc, :string
    field :no, :string
    field :bname, :string
    field :supplier, :string
    field :rank, :integer

    timestamps(inserted_at: :created_at)
  end

  # @required_fields ~w(name desc)
  @optional_fields ~w(name description cost_price sn status cname)a

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @optional_fields) # 白名單？
    |> validate_required([:name, :description]) # 驗證欄位
  end
end
