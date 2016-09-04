defmodule MyList do
  # MyList.flatten/1
  def flatten([]), do: [] # base (degenerate)

  def flatten([ head | tail ]) do
    flatten(head) ++ flatten(tail)
  end

  def flatten(head), do: [ head ]
end


# MyList.flatten([1, [2], [[3]], []]) #=> [1, 2, 3]
