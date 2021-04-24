defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, return the converted list" do
      expected = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzBuzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expected
    end

    test "when an invalid file is provided, return an error" do
      expected = {:error, "Erro reading the file: enoent"}

      assert FizzBuzz.build("error.txt") == expected
    end
  end
end
