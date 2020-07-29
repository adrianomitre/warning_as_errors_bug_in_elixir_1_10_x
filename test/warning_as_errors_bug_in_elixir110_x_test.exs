defmodule WarningAsErrorsBugInElixir110XTest do
  use ExUnit.Case
  doctest WarningAsErrorsBugInElixir110X

  test "greets the world" do
    assert WarningAsErrorsBugInElixir110X.hello() == :world
  end
end
