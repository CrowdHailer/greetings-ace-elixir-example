defmodule Greetings.MixProject do
  use Mix.Project

  def project do
    [
      app: :greetings,
      version: "0.1.0",
      elixir: "~> 1.6-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Greetings.Application, []}
    ]
  end

  defp deps do
    [
      {:ace, "~> 0.15.9"},
    ]
  end
end
