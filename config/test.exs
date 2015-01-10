use Mix.Config

config :hardward_zone, HardwardZone.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
