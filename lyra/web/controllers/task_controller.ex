defmodule Lyra.TaskController do
  use Lyra.Web, :controller
  alias Lyra.Task

  def index(conn, _params) do
    tasks = Repo.all(Task)
    render conn, "index.json", tasks: tasks
  end

  def show(conn, %{"id" => id}) do
    task = Repo.get(Task, id)
    render conn, "show.json", task: task
  end
end
