defmodule TestPhauxthWeb.SessionView do
  use TestPhauxthWeb, :view

  def render("info.json", %{info: token}) do
    %{access_token: token}
  end
end
