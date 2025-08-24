defmodule Main do
  @moduledoc """
  Módulo principal que solicita una palabra al usuario,
  la convierte a mayúsculas y muestra el resultado.
  """

  @doc """
  Función principal que gestiona el flujo de ejecución del programa.
  """
  def main() do
    Util.input_data("Ingrese una palabra:")
    |> String.upcase()
    |> Util.show_message()
  end
end

Main.main()
