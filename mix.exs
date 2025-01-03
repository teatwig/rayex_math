defmodule RayexMath.MixProject do
  use Mix.Project

  @version "0.0.1"
  @source_url "https://github.com/teatwig/rayex_math"

  def project do
    [
      app: :rayex_math,
      version: @version,
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      compilers: [:unifex, :bundlex] ++ Mix.compilers(),
      deps: deps(),
      dialyzer: [plt_add_apps: [:mix]],
      # Hex
      name: "RayexMath",
      description: "raymath bindings for Elixir",
      package: package(),
      docs: [
        main: "readme",
        extras: [
          "README.md"
        ],
        source_url: @source_url,
        source_ref: "v#{@version}"
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      # CI
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.36", only: :dev, runtime: false},
      # Deps
      {:unifex, "~> 1.2"}
    ]
  end

  defp package do
    [
      maintainers: ["teatwig"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url},
      files:
        ~w(.formatter.exs README.md mix.exs bundlex.exs c_src/rayex_math/rayex_math.c c_src/rayex_math/rayex_math.h c_src/rayex_math/rayex_math.spec.exs lib)
    ]
  end
end
