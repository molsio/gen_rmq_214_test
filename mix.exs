defmodule Rabbitconsumer.MixProject do
  use Mix.Project

  def project do
    [
      app: :rabbitconsumer,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:lager, :logger],
      mod: {Rabbit214.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gen_rmq, "~> 3.0"},
      {:jason, "~> 1.2"}
    ]
  end
end
