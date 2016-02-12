defmodule Fib do
  seq = [1, 2]

  def fib(max \\ 200) do  
      next(seq)
  end

  def sum(seq) do
  	first = length(seq) - 1
  	second = length(seq) - 2
  	first + second
  end

  def next(seq) do
  	cond do
  	  List.last(seq) > 100 -> seq
  	  :else -> List.insert_at(seq, length(seq), sum(seq))
  	end
  end
end

