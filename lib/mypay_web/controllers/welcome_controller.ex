defmodule MypayWeb.WelcomeController do
  use MypayWeb, :controller

  alias Mypay.Numbers

  def index(connection, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(connection)
  end

  defp handle_response({:ok, %{result: result}}, connection) do
    connection
    |> put_status(:ok)
    |> json(%{message: "Welcome to MyPay API. Here is your number #{result}"})
  end

  defp handle_response({:error, reason}, connection) do
    connection
    |> put_status(:bad_request)
    |> json(reason)
  end
end
