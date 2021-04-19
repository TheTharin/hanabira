defmodule Hanabira.Posts do
  alias Hanabira.Repo
  alias Hanabira.Posts.Post

  def get_all() do
    Repo.get_all(Post)
  end

  def get(id) do
    case Repo.get(Post, id) do
      %Post{} = post -> {:ok, post}
      _ -> {:error, :post_not_found}
    end
  end

  def get_by_number(number) do
    case Repo.get_by(Post, %{number: number}) do
      %Post{} = post -> {:ok, post}
      _ -> {:error, :post_not_found}
    end

  end

  def create(params) do
    Post.create_changeset(params)
    |> Repo.insert()
  end
end
