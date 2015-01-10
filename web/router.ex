defmodule HardwardZone.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", HardwardZone do
    pipe_through :browser # Use the default browser stack

    get "/", HardwardZone.HardwaresController, :index, as: :root
    resources "/hardwares", HardwardZone.HardwaresController
  end

  # Other scopes may use custom stacks.
  # scope "/api", HardwardZone do
  #   pipe_through :api
  # end
end
