defmodule HardwardZone.Endpoint do
  use Phoenix.Endpoint, otp_app: :hardward_zone

  plug Plug.Static,
    at: "/", from: :hardward_zone

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_hardward_zone_key",
    signing_salt: "voMfNms3",
    encryption_salt: "Te/aLwzL"

  plug :router, HardwardZone.Router
end
