defmodule TestPhauxthWeb.ConfirmView do
  use TestPhauxthWeb, :view

  def render("info.json", %{info: message}) do
    %{info: %{detail: message}}
  end
end
