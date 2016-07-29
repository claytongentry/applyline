defmodule Lyra.TaskView do
  use Lyra.Web, :view

  def render("index.json", %{tasks: tasks}) do
    render_many(tasks, __MODULE__, "show.json")
  end

  def render("show.json", %{task: task}) do
    %{
      id: task.id,
      description: task.description,
      duration: task.duration,
      deadline: task.deadline,
      is_general: task.is_general,
      school_id: task.school_id
    }
  end
end
