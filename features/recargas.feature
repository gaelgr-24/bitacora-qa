Feature: Paquetes y Recargas

  # Se validan las diferentes opciones de recarga disponibles para un número Telcel.

  Background:
    Given el usuario se encuentra en la página de Telcel
    And la sección "Paquetes y Recargas" está disponible

  @humo
  Scenario Outline: Recarga de plan exitosa
    When el usuario ingresa su número celular
    And confirma su número celular
    And selecciona la opción "<plan>"
    And hace clic en el botón "Continuar"
    Then el sistema muestra las opciones disponibles para "<plan>"

    Examples:
      | plan                           |
      | Paquete Amigo Sin Límite       |
      | Recarga tu Saldo Amigo         |
      | Internet por Tiempo            |
      | Paquete Viajero Internacional  |
      | Otros Paquetes                 |

  @critico
  Scenario: Recarga con número inválido
    When el usuario ingresa un número celular inválido
    And confirma el número ingresado
    Then el sistema muestra el mensaje "El número ingresado no es Telcel"

  @regresion
  Scenario: Cancelar una recarga antes de continuar
    When el usuario ingresa su número celular
    And selecciona un paquete de recarga
    And hace clic en el botón "Cancelar"
    Then el sistema regresa a la pantalla principal de Paquetes y Recargas