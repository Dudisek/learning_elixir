Our goal is to write a series of transformation:
```elixir
[1, [[2], 3]] #=> [9, 4, 1]
```

```elixir
[1, [[2], 3]] |> List.flatten |> Enum.map(fn x -> x * x end)
