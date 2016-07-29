defmodule Lyra.UserController do
  use Lyra.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Lyra.User)
    render conn, users: users
  end
end
