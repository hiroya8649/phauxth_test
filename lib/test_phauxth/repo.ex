defmodule TestPhauxth.Repo do
  use Ecto.Repo,
    otp_app: :test_phauxth,
    adapter: Ecto.Adapters.Postgres
end
