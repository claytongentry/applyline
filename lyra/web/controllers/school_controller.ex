defmodule Lyra.SchoolController do
  use Lyra.Web, :controller
  alias Lyra.School
  import Ecto.Query

  def index(conn, %{user_id: user_id}) do
    schools = Repo.all(
      from s in School,
      where: s.user_id == ^user_id
    )
    |> Repo.preload(:tasks)

    render conn, "index.json", schools: schools
  end
  def index(conn, _params) do
    schools = Repo.all(School) |> Repo.preload(:tasks)
    render conn, "index.json", schools: schools
  end

  def show(conn, %{"id" => id}) do
    school = Repo.get(School, id)
    render conn, "show.json", %{school: school}
  end

  def with_tasks(conn, %{"id" => id}) do
    school = Repo.get(School, id) |> Repo.preload(:tasks)
    render conn, "show.json", %{school: school}
  end
end
