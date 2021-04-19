defmodule Hanabira.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table("posts") do
      add :body, :text
      add :number, :integer, null: false

      add :inserted_at, :utc_datetime
    end

    create index("posts", [:number], unique: true)
  end
end
