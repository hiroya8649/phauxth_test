defmodule TestPhauxthWeb.PageController do
  use TestPhauxthWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
