Feature: Registro de usuario

  Scenario Outline: Validar el formulario de registro
    Given que el usuario abre el formulario de registro
    When escribe "<nombre>" en el campo Nombre
    And escribe "<email>" en el campo Correo
    And escribe "<password>" en el campo Contraseña
    And hace clic en el botón Registrarse
    Then el sistema muestra "<resultado>"

    Examples:
      | nombre | email           | password | resultado                     |
      | Gael   | gael@gmail.com  | 12345678 | Registro exitoso              |
      |         | gael@gmail.com  | 12345678 | El nombre es obligatorio      |
      | Gael   | gaelgmail.com   | 12345678 | Correo electrónico inválido   |