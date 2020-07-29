defmodule WarningAsErrorsBugInElixir110X do
  @moduledoc """
  Documentation for `WarningAsErrorsBugInElixir110X`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> WarningAsErrorsBugInElixir110X.hello()
      :world

  """
  def hello do
    Dict.keys(x: 1)
    String.rstrip("}", ?})
    :world
  end
end
