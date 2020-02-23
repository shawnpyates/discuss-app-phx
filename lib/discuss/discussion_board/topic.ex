defmodule Discuss.DiscussionBoard.Topic do
  use Ecto.Schema
  import Ecto.Changeset
  alias DiscussionBoard.{Topic}
  
  schema "topics" do
    field :title, :string
  end

  # TODO: use create_topic in DiscussionBoardModule
  def changeset(struct, attrs \\ %{}) do
    struct
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end