defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  alias Discuss.DiscussionBoard.Topic
  
  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})
  end
end
