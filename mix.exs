defmodule SSPDemo.Mixfile do
  use Mix.Project

  def project do
    [app: :ssp_demo,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger,:cowboy,:iex,:poison, :exos,:folsom,:folsomite]]
  end

  defp deps do
    [{:cowboy, "~> 1.0"},
     {:exos, "~> 1.0.0"},
     {:poison, "~> 1.5.0"},
     {:folsom, github: "boundary/folsom"},
     {:folsomite, github: "campanja/folsomite"}]
  end
end
