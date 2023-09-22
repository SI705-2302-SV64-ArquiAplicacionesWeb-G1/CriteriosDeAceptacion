Feature: Filtrar Puntos de Reciclaje por Material
  Como usuario de la aplicación de reciclaje,
  Quiero poder filtrar los puntos de reciclaje por tipo de material (papel, vidrio, plástico, etc.)
  Para encontrar fácilmente puntos de reciclaje que acepten los materiales que deseo reciclar.

  Scenario: Usuario filtra correctamente los puntos de reciclaje
    Given que estoy logueado en mi cuenta de usuario
    And hay puntos de reciclaje disponibles en la aplicación
    When voy a la sección de "Filtro de Materiales" en la aplicación
    And selecciono un tipo de material, como papel
    Then debería ver una lista actualizada de puntos de reciclaje que aceptan papel, incluyendo su ubicación
    And debería ver el mensaje de confirmación "Has aplicado el filtro de material correctamente."

    Examples:
      | Material Filtrado | Mensaje de Confirmación                                |
      | Papel             | Has aplicado el filtro de material correctamente.        |

  Scenario: Usuario no encuentra puntos de reciclaje con ese material
    Given que estoy logueado en mi cuenta de usuario
    And no hay puntos de reciclaje disponibles en la aplicación que acepten el material "vidrio"
    When voy a la sección de "Filtro de Materiales" en la aplicación
    And selecciono el tipo de material "vidrio"
    Then no debería ver ningún punto de reciclaje en la lista
    And debería ver el mensaje de error "No se encontraron puntos de reciclaje que acepten vidrio."

    Examples:
      | Material Filtrado | Mensaje de Error                                       |
      | Vidrio            | No se encontraron puntos de reciclaje que acepten vidrio. |

  Scenario: Usuario ingresa un material reciclable incorrecto
    Given que estoy logueado en mi cuenta de usuario
    When voy a la sección de "Filtro de Materiales" en la aplicación
    And selecciono un tipo de material incorrecto, como "plásticoo"
    Then debería ver un mensaje de error que indica que el tipo de material no es válido
    And no debería aplicarse ningún filtro de material

    Examples:
      | Material Filtrado | Mensaje de Error                            |
      | Plásticoo         | El tipo de material no es válido.        |

