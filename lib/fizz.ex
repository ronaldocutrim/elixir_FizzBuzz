defmodule FizzBuzz do
  def build(file_name) do
    handle_file(File.read(file_name))
  end
  def handle_file({:ok, result}), do: String.split(result, ",") |> Enum.map(fn element -> String.trim(element) |> String.to_integer() end)
  def handle_file({:error, reason}), do: IO.inspect("Error on read file #{reason}")
end
