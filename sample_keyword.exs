defmodule Main do
  def match([a: _, b: _, c: _]) do
    IO.puts "match1"
  end

  def match([a: _, b: _]) do
    IO.puts "match2"
  end

  def match(_) do
    IO.puts "default"
  end
end

Main.match [a: :a, b: :b, c: :c]
Main.match [a: :a, b: :b]
