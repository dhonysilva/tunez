defmodule Tunez.Music.Album do
  use Ash.Resource, otp_app: :tunez, domain: Tunez.Music, data_layer: AshSqlite.DataLayer
end
