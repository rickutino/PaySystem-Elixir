defmodule Mypay.Repo do
  use Ecto.Repo,
    otp_app: :mypay,
    adapter: Ecto.Adapters.Postgres
end
