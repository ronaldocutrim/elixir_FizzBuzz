defmodule FizzTest do
  use ExUnit.Case
  doctest Fizz

  test "greets the world" do
    assert Fizz.hello() == :world
  end
end
