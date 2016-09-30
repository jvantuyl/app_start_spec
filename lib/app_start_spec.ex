defmodule AppStartSpec do
  use Application

  @type args     :: any()
  @type on_start :: {:ok, pid()} |
                    {:ok, pid(), Application.state()} |
                    {:error, reason :: term}
  @type type     :: Application.start_type()

  @spec start(type(), args()) :: on_start()
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = []

    opts = [strategy: :one_for_one, name: AppStartSpec.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
