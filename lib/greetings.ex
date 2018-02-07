defmodule Greetings do
  use Ace.HTTP.Service, [cleartext: true]

  require EEx

  pug_string = File.read!(Path.join(__DIR__, "home_page.pug"))
  eex_string = Expug.to_eex!(pug_string)
  EEx.function_from_string(:def, :home_page, eex_string, [:assigns])

  def handle_request(
    %{method: :GET, path: []},
    %{greeting: greeting})
  do

    response(:ok)
    |> set_header("content-type", "text/html")
    |> set_body(home_page(greeting: greeting))
  end

  def handle_request(
    %{method: :GET, path: ["name", name]},
    _state)
  do
    response(:ok)
    |> set_header("content-type", "text/plain")
    |> set_body("Hello, #{name}!")
  end

  def handle_request(_request, _state) do
    response(:not_found)
    |> set_header("content-type", "text/plain")
    |> set_body("Sorry, nothing here.")
  end
end
