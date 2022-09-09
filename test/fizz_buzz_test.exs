defmodule FizzBuzzTest do
  use ExUnit.Case
  describe "build/1" do
    test "when a valid file is provided, retuns the converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, :fizzbuzz, :buzz, :buzz, :fizzbuzz, :buzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expected_response
     end
     test "when an invalid file is provided, retuns an error" do
      expected_response = {:error, "Erro ao ler o arquivo: enoent"}

      assert FizzBuzz.build("invalid.txt") == expected_response
     end
  end
end
