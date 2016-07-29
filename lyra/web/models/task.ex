defmodule Lyra.Task do
  use Lyra.Web, :model

  schema "tasks" do
    field :description, :string
    field :duration, Ecto.Time
    field :deadline, Ecto.DateTime
    field :progress, :float
    field :is_general, :boolean # required by other schools?

    belongs_to :school, Lyra.School

    timestamps
  end

  @required_fields ~w(description duration deadline progress)
  @optional_fields ~w(is_general)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
