# run from multiple terminals as:
# $ iex --sname abc -pa _build/dev/lib/distro/ebin/ --app distro --erl "-config config/distro"
# where sname should be: abc | bcd | def
# and from iex in each terminal run:
# > Distro.DistroCal.add 3,4
defmodule Distro.Mixfile do
  use Mix.Project

  def project do
    [app: :distro,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [
      applications: [:logger],
      mod: {Distro, []}
    ]
  end

  defp deps do
    []
  end
end
