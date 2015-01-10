defmodule HardwardZone.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://maxbeizer@localhost/hardward_zone"
  end

  def priv do
    app_dir(:hardward_zone, "priv/repo")
  end
end
