defmodule Lyra.Repo.Migrations.InitTables do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :password_hash, :string
      add :age, :integer
    end

    create table(:schools) do
      add :name, :string
    end

    create table(:tasks) do
      add :description, :string
      add :duration, :time
      add :deadline, :datetime
      add :progress, :float, default: 0.0
      add :is_general, :boolean
      add :school_id, references(:schools)
    end

    create table(:users_schools) do
      add :user_id, references(:users)
      add :school_id, references(:schools)
    end
  end
end
