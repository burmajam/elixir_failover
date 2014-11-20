defmodule Distro.DistroCal do
  use GenServer

  def start_link, do: GenServer.start_link(__MODULE__, [], name: {:global, __MODULE__})
  def add(x, y), do: GenServer.call({:global, __MODULE__}, {:cal, x, y})
  def handle_call({:cal, x, y}, _caller, state), do: {:reply, x + y, state}
end
