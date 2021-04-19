defmodule Hanabira.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hanabira.Posts.Post

  @type t :: %__MODULE__{}

  schema "posts" do
    field :body, :string
    field :number, :integer
    field :inserted_at, :utc_datetime
  end

  @required_fields [:number]
  @optional_fields [:body]

  @spec create_changeset(map) :: Ecto.Changeset.t()
  def create_changeset(params) do
    %Post{}
    |> cast(params, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> unsafe_validate_unique([:number], Hanabira.Repo)
    |> unique_constraint(:number)
  end
end
