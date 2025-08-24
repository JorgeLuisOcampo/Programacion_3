defmodule Main do
  @moduledoc """
  Módulo principal que solicita una palabra al usuario,
  cuenta la cantidad de letras y muestra el resultado.
  """

  @doc """
  Función principal que gestiona el flujo de ejecución del programa.
  """
  def main() do
    Util.input_data("Ingrese una palabra para contar las letras:")
    |> String.length()
    |> Integer.to_string()
    |> Util.show_message()
  end
end

Main.main()
