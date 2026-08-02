Feature: Agregar productos al carrito de compras

  # El usuario debe poder agregar productos al carrito antes de realizar la compra.

  Background:
    Given el usuario se encuentra en la página principal de Mercado Libre
    And ha iniciado sesión correctamente

  @humo
  Scenario: Agregar un producto al carrito
    When el usuario busca "Laptop Lenovo"
    And selecciona el primer producto
    And hace clic en "Agregar al carrito"
    Then el producto se agrega correctamente al carrito
    And el carrito muestra un producto agregado

  @critico
  Scenario: Intentar agregar un producto sin disponibilidad
    When el usuario selecciona un producto sin existencia
    And hace clic en "Agregar al carrito"
    Then el sistema informa que el producto no está disponible

  @regresion
  Scenario Outline: Agregar diferentes productos al carrito
    When el usuario busca "<producto>"
    And selecciona el primer resultado
    And hace clic en "Agregar al carrito"
    Then el sistema muestra "<resultado>"

    Examples:
      | producto           | resultado                             |
      | iPhone 16 Pro      | Producto agregado correctamente       |
      | PlayStation 5      | Producto agregado correctamente       |
      | Mochila            | Producto agregado correctamente       |
      | Audífonos Bluetooth| Producto agregado correctamente       |