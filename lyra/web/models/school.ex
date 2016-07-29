defmodule Lyra.School do
  use Lyra.Web, :model
  use Ecto.Schema

  schema "schools" do
    field :name, :string

    has_many :tasks, Lyra.Task
    has_many :users_schools, Lyra.UserSchool
    has_many :users, through: [:users_schools, :user]
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
