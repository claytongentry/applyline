defmodule Lyra.SchoolView do
  use Lyra.Web, :view

  def render("index.json", %{schools: schools}) do
    render_many(schools, __MODULE__, "show.json")
  end

  def render("show.json", %{school: school}) do
    %{
      id: school.id,
      name: school.name,
      tasks: render_many(school.tasks, Lyra.TaskView, "show.json")
    }
  end
end
