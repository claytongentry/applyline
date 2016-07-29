defmodule Lyra.Repo.Migrations.AddTimestamps do
  use Ecto.Migration

  def change do
    alter table(:users) do
      timestamps
    end

    alter table(:tasks) do
      timestamps
    end

    alter table(:users_schools) do
      timestamps
    end
  end
end
