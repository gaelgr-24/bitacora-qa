Feature: Login de usuario

    Scenario: Login exitoso con credenciales validas
        Given el usuario esta en la pagina de login 
        And el usuario tiene cuenta activa

        When el usuario ingresa correo y contraseña
        And el usuario da clic en "iniciar sesion"

        Then el usuario es redirigido al dashboard
        And su nombre se muestra en el header
        