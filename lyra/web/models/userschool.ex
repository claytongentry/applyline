defmodule Lyra.UserSchool do
  use Lyra.Web, :model

  schema "users_schools" do
    belongs_to :user, Lyra.User
    belongs_to :school, Lyra.School

    timestamps
  end
end
