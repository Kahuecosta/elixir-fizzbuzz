defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, read_result}) do
    result =
      read_result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numebers/1)

    {:ok, result}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Erro reading the file: #{reason}"}

  defp convert_and_evaluate_numebers(el) do
    el
    |> String.to_integer()
    |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzBuzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number
end
