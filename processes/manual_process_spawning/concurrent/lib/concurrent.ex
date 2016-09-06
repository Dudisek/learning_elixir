defmodule Concurrent do
  def get_many_time(n) do
    coordinator_pid = spawn(Concurrent.Coordinator, :loop, [[], n])

    spawn_new_worker(n, coordinator_pid)
  end

  def spawn_new_worker(n, coordinator_pid) when n <= 1 do
    worker_pid = spawn(Concurrent.Worker, :loop, [])
    send(worker_pid, {:ok, coordinator_pid})
  end

  def spawn_new_worker(n, coordinator_pid) do
    worker_pid = spawn(Concurrent.Worker, :loop, [])
    send(worker_pid, {:ok, coordinator_pid})
    spawn_new_worker(n-1, coordinator_pid)
  end
end
