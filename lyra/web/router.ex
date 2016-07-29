defmodule Lyra.Router do
  use Lyra.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Lyra do
    pipe_through :api # Use the default browser stack

    get "/users/:id/tasks", UserController, :with_tasks
    get "/users/:id/schools", UserController, :with_schools
    get "/users/:id", UserController, :show
    get "/users", UserController, :index

    get "/tasks/:id", TaskController, :show
    get "/tasks", TaskController, :index

    get "/schools/:id/tasks", SchoolController, :with_tasks
    get "/schools/:id", SchoolController, :show
    get "/schools", SchoolController, :index

  end
end
