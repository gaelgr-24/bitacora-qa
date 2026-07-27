Feature: Búsqueda de productos en Mercado Libre

  Scenario: Búsqueda exitosa de un producto
    Given el usuario está en la página principal de Mercado Libre
    And el buscador está disponible
    When escribe "iPhone 17 pro max" en la barra de búsqueda
    And hace clic en el botón de buscar
    Then el sistema muestra productos relacionados con "iPhone 17 pro max"
    And presenta una lista de resultados disponibles

  Scenario: Búsqueda sin resultados
    Given el usuario está en la página principal de Mercado Libre
    When escribe "Iphone 35 pro max"
    And hace clic en el botón de buscar
    Then el sistema indica que no encontró resultados
    And sugiere intentar con otra búsqueda

  Scenario: Búsqueda utilizando el filtro de envío gratis
    Given el usuario realizó una búsqueda de "Iphone 6"
    And existen productos disponibles
    When selecciona el filtro "Envío gratis"
    Then el sistema muestra únicamente productos con envío gratis
    And conserva el criterio de búsqueda ingresado