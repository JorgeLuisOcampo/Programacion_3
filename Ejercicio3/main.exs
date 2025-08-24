defmodule Main do
  @moduledoc """
  Módulo principal que calcula el salario neto de un empleado
  en función de las horas trabajadas y el valor por hora.
  """

  @doc """
  Función principal que solicita los datos del empleado,
  calcula el salario incluyendo horas extra y muestra el resultado.
  """
  def main() do
    nombre = Util.input_data("Nombre del empleado: ")
    horas = Util.input_data("Horas trabajadas: ") |> String.to_integer()
    valor_hora = Util.input_data("Valor por hora: ") |> String.to_integer()

    salario =
      cond do
        horas <= 160 -> Float.to_string(horas * valor_hora)
        horas > 160 -> Float.to_string((horas - 160) * valor_hora * 1.25 + 160 * valor_hora)
      end

    Util.show_message(
      "Nombre: #{nombre} \nHoras trabajadas: #{horas} \nSalario neto: #{salario} pesos Colombianos."
    )
  end
end

Main.main()
