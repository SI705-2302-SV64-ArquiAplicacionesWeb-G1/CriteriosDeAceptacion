Feature: Visualizar Mapa de Puntos de Reciclaje
  Como usuario de la aplicación de reciclaje,
  Quiero explorar un mapa interactivo que muestre los puntos de reciclaje cercanos a mi ubicación
  Para encontrar fácilmente lugares donde reciclar materiales.

  Scenario: El usuario encuentra correctamente los puntos de reciclaje
    Given que estoy logueado en mi cuenta de usuario
    When voy a la sección de "Mapa de Puntos de Reciclaje" o "Localizador de Reciclaje" en la aplicación
    And observo el mapa
    Then debería ver marcadores o iconos que representan los puntos de reciclaje en el área
    And debería poder hacer clic o tocar un marcador para obtener más información sobre ese punto de reciclaje
    And debería ver el mensaje de confirmación "Puntos de reciclaje encontrados con éxito."

    Examples:
      | Ubicación Actual | Mensaje de Confirmación                      |
      | Ciudad A          | Puntos de reciclaje encontrados con éxito.   |
      | Ciudad B          | Puntos de reciclaje encontrados con éxito.   |

  Scenario: El usuario ingresa mal una ubicación y no encuentra puntos de reciclaje
    Given que estoy logueado en mi cuenta de usuario
    When ingreso una ubicación incorrecta en la búsqueda del mapa
    And presiono el botón de búsqueda
    Then no debería ver ningún marcador en el mapa
    And debería ver un mensaje de error que indica "No se encontraron puntos de reciclaje para la ubicación ingresada."

    Examples:
      | Ubicación Incorrecta | Mensaje de Error                                          |
      | Dirección Errónea    | No se encontraron puntos de reciclaje para la ubicación ingresada. |
      | Ciudad Inexistente   | No se encontraron puntos de reciclaje para la ubicación ingresada. |

  Scenario: El usuario no encuentra los puntos de reciclaje porque no hay puntos cercanos
    Given que estoy logueado en mi cuenta de usuario
    And no hay puntos de reciclaje cercanos disponibles en mi ubicación
    When voy a la sección de "Mapa de Puntos de Reciclaje" o "Localizador de Reciclaje" en la aplicación
    Then debería ver un mensaje que indica "No hay puntos de reciclaje cercanos en este momento."
    And no debería ver ningún marcador en el mapa

    Examples:
      | Ubicación Sin Puntos Cercanos | Mensaje de Confirmación                                |
      | Zona Rural                      | No hay puntos de reciclaje cercanos en este momento.   |
      | Área Despoblada                | No hay puntos de reciclaje cercanos en este momento.   |
