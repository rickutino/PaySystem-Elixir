defmodule MypayWeb.WelcomeController do
  use MypayWeb, :controller

  def index(connection, _params) do
    text(connection, "Welcome to the MyPay API")
  end
end
