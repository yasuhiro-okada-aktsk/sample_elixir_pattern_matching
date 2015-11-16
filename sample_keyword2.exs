defmodule Main do
  def match([{:kind, _}, {:arguments, _} | _ = options]) do
    IO.puts "match : #{inspect(options)}"
  end

  def match(_) do
    IO.puts "default"
  end
end

Main.match [kind: :Field, arguments: ["a", "b", "c"], extra: "extra", extra2: "extra"]
Main.match [kind: :Field, arguments: ["a", "b", "c"]]
Main.match %{kind: :Field}
