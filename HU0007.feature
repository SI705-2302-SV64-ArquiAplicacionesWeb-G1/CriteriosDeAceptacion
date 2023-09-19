Feature: Visualizar Puntos de Reciclaje Cercanos

  Como usuario de WeRecycle,
  Quiero poder visualizar los puntos de reciclaje más cercanos a mi ubicación
  Para poder vender mi reciclaje de manera rápida y eficiente.

  Scenario: Usuario pide visualizar puntos de reciclaje cercanos
    Given que estoy logueado en mi cuenta de usuario
    When voy a la sección de "Puntos de Reciclaje Cercanos" o "Localizador de Reciclaje"
    Then debería ver un mapa interactivo que muestra los puntos de reciclaje cercanos a mi ubicación actual

    Examples:
      | Ubicación Actual | Mensaje de Confirmación                                |
      | Calle Principal   | Mapa mostrando puntos de reciclaje cercanos          |
      | Zona Residencial  | Mapa mostrando puntos de reciclaje cercanos          |

  Scenario: Usuario no puede visualizar puntos de reciclaje cercanos porque no hay puntos cercanos
    Given que estoy logueado en mi cuenta de usuario
    And no hay puntos de reciclaje cercanos disponibles en mi ubicación
    When voy a la sección de "Puntos de Reciclaje Cercanos" o "Localizador de Reciclaje"
    Then debería ver un mensaje que indica que no hay puntos de reciclaje cercanos en este momento
    And no debería ver un mapa interactivo en esta situación

    Examples:
      | Ubicación Actual | Mensaje de Confirmación                                     |
      | Área Industrial  | No hay puntos de reciclaje cercanos en este momento         |
      | Zona Rural       | No hay puntos de reciclaje cercanos en este momento         |
