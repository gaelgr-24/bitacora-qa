Feature: Registro de usuario en Mercado Libre

  Scenario: Registro exitoso
    Given el usuario está en el apartado de creación de cuenta
    And el usuario no tiene una cuenta registrada
    When ingresa su nombre y apellido
    And ingresa un correo electrónico válido
    And crea una contraseña segura
    And hace clic en "Continuar"
    Then el sistema crea la cuenta correctamente
    And redirige al usuario a la página principal de Mercado Libre

  Scenario: Registro fallido con correo ya registrado
    Given el usuario está en el de creación de cuenta
    And el correo "gaelg8888@gmail.com" ya está registrado
    When ingresa el correo "gaelg8888@gmail.com"
    And completa los demás datos correctamente
    And hace clic en "Continuar"
    Then el sistema muestra el mensaje "Este correo ya está registrado"
    And no permite crear una nueva cuenta

  Scenario: Registro fallido con campos vacíos
    Given el usuario está en la página de creación de cuenta
    When hace clic en "Continuar" sin completar la información
    Then el sistema muestra mensajes indicando los campos obligatorios
    And permanece en la página de registro