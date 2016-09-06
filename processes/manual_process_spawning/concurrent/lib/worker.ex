defmodule Concurrent.Worker do
  def loop do
    receive do
      {:ok, coordinator_pid} ->
        send coordinator_pid, {:ok, current_time}
      _ ->
        IO.puts "Some Error Occured"
    end
  end

  def current_time do
    DateTime.utc_now |> DateTime.to_string
  end
end
