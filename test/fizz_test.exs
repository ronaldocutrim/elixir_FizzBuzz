defmodule FizzTest do
  use ExUnit.Case
  describe "build/1" do
    test "When a valid file is provided, returs the coverted list" do
      assert FizzBuzz.build("numbers.txt") == {:ok, [41, 8, 23, 34, :buzz, :fizz]}
    end

    test "When a invalid file is provided, return error" do
      assert FizzBuzz.build("invalid.txt") == {:error, :enoent}
    end
  end
end
