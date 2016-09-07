defmodule Hello.HomeController do
  use Hello.Web, :controller

  def index(conn, %{"name" => name}) do
    render(conn, "index.html", name: name)
  end
end
