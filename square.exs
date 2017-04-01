defmodule Maths do
	def square (collection) do
		collection
		|> Enum.map(fn x -> x * x end)
	end
end

Maths.square(1..1000) |> IO.puts
