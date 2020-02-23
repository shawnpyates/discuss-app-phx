defmodule Discuss.DiscussionBoard do
  import Ecto.Query, warn: false
  alias Dicuss.Repo
  alias Discuss.DiscussionBoard.{Topic}

  def create_topic(attrs \\ %{}) do
    %Topic{}
    |> Topic.changeset(attrs)
    |> Repo.insert()
  end
end