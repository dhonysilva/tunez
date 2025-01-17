defmodule Tunez.Music.Artist do
  use Ash.Resource, otp_app: :tunez, domain: Tunez.Music, data_layer: AshSqlite.DataLayer

  sqlite do
    table "artists"
    repo Tunez.Repo
  end
end
