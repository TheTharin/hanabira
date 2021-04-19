defmodule Hanabira.Repo do
  use Ecto.Repo,
    otp_app: :hanabira,
    adapter: Ecto.Adapters.Postgres
end
