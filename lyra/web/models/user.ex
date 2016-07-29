defmodule Lyra.User do
  use Lyra.Web, :model

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    field :age, :integer

    has_many :users_schools, Lyra.UserSchool
    has_many :schools, through: [:users_schools, :school]

    timestamps
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields)
  end
end
