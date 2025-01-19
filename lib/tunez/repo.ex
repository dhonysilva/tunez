defmodule Tunez.Repo do
  use AshPostgres.Repo,
    otp_app: :tunez

  def min_pg_version do
    %Version{major: 16, minor: 0, patch: 0}
  end
end
