defmodule HardwardZone.Queries do
  import Ecto.Query

  def all_hardwares do
    query = from hardware in HardwardZone.Hardware,\
            select: hardware

    HardwardZone.Repo.all(query)
  end
end
