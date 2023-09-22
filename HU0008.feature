Feature: Visualizar Información sobre Puntos de Reciclaje

  Como usuario de WeRecycle,
  Quiero que la aplicación me muestre información detallada sobre un punto de reciclaje
  Para tener una mejor idea del centro de reciclaje al que voy.

  Scenario: Usuario accede correctamente a la información sobre el punto de reciclaje
    Given que estoy logueado en mi cuenta de usuario
    When ingreso al mapa de puntos de reciclaje cercanos
    And selecciono un punto de reciclaje en el mapa
    Then debería ver una pantalla con información detallada sobre ese punto de reciclaje

    Examples:
      | Punto de Reciclaje | Información Detallada                                            |
      | Centro A            | Información sobre el Centro A con dirección, horarios, etc.      |
      | Centro B            | Información sobre el Centro B con dirección, horarios, etc.      |

  Scenario: Usuario escribe mal el punto de reciclaje y no se muestra información
    Given que estoy logueado en mi cuenta de usuario
    When ingreso al mapa de puntos de reciclaje cercanos
    And busco un punto de reciclaje utilizando un nombre o dirección incorrectos
    Then no debería ver información sobre el punto de reciclaje
    And debería ver un mensaje que indica que no se encontró información para la búsqueda realizada

    Examples:
      | Búsqueda Incorrecta | Mensaje de Error                                   |
      | Punto Incorrecto    | No se encontró información para la búsqueda.     |
      | Dirección Incorrecta| No se encontró información para la búsqueda.     |
