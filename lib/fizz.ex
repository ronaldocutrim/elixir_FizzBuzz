defmodule FizzBuzz do
  def build(file_name) do
    handle_file(File.read(file_name))
  end

  defp handle_file({:ok, result}) do
    result = result
    |> String.split(",")
    |> Enum.map(
      fn element -> String.trim(element)
      |> String.to_integer()
      |> evalute_number() end
    )
    {:ok, result}
  end

  defp handle_file({:error, reason}), do: {:error, reason}

  defp evalute_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evalute_number(number) when rem(number, 3) == 0, do: :fizz
  defp evalute_number(number) when rem(number, 5) == 0, do: :buzz
  defp evalute_number(number), do: number

end
