defmodule Discuss.DiscussionBoard.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias DiscussionBoard.{User}
  
  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string

    timestamps()
  end

  def changeset(struct, attrs \\ %{}) do
    struct
    |> cast(attrs, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end
end