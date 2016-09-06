defmodule Concurrent.Coordinator do
  def loop(times, count) do
    receive do
      {:ok, time} ->
        new_times = [ time | times ]

        if Enum.count(new_times) == count do
          send(self, :done)
        end

        loop(new_times, count)

      :done ->
        IO.puts times

      _ ->
        loop(times, count)
    end
  end
end
