defmodule Main do
  def match([{:kind, kind} | _]) do
    IO.puts "match : #{inspect(kind)}"
  end

  def match(_) do
    IO.puts "default"
  end
end

Main.match [kind: :Field, arguments: ["a", "b", "c"], extra: "extra"]
Main.match [abc: 0, kind: :Field, arguments: ["a", "b", "c"], extra: "extra"]
Main.match %{kind: :Field}
