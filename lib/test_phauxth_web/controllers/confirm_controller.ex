defmodule TestPhauxthWeb.ConfirmController do
  use TestPhauxthWeb, :controller

  import TestPhauxthWeb.Authorize

  alias Phauxth.Confirm
  alias TestPhauxth.Accounts
  alias TestPhauxthWeb.Email

  def index(conn, params) do
    case Confirm.verify(params) do
      {:ok, user} ->
        Accounts.confirm_user(user)
        Email.confirm_success(user.email)

        conn
        |> put_view(TestPhauxthWeb.ConfirmView)
        |> render("info.json", %{info: "Your account has been confirmed"})

      {:error, _message} ->
        error(conn, :unauthorized, 401)
    end
  end
end
