defmodule DiscussWeb.Plugs.SetUser do
  import Plug.Conn
  import Phoenix.Controller

  alias Discuss.DiscussionBoard.User
  alias Discuss.Repo

  def init(_attrs) do
  end

  def call(conn, _attrs) do
    user_id = get_session(conn, :user_id)

    cond do
      # if user is successfully fetched, 'user' var will be truthy and 'do'-block will be exited
      user = user_id && Repo.get(User, user_id) ->
        assign(conn, :user, user)
      true ->
        assign(conn, :user, nil) 
    end
  end
end