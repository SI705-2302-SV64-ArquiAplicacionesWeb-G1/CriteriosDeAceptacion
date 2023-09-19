Feature: Calificar Publicaciones

  Scenario: Usuario logra hacer una calificación a una publicación
    Given que estoy logueado en mi cuenta de usuario
    And estoy viendo una publicación
    When hago clic en el botón de "Me gusta" o "Calificar"
    Then debería ver un mensaje de confirmación que indica que he realizado la calificación con éxito
    And mi calificación (like) debería aparecer en la publicación

    Examples:
      | Acción       | Mensaje de Confirmación          |
      | Me gusta     | Has dado Me gusta a esta publicación. |
      | Calificar    | Has calificado esta publicación.    |

  Scenario: Usuario no logra hacer una calificación a una publicación
    Given que estoy logueado en mi cuenta de usuario
    And estoy viendo una publicación
    And ya he calificado esta publicación previamente
    When intento calificar nuevamente la publicación
    Then debería ver un mensaje de error que indica que no puedo calificar la publicación dos veces
    And mi calificación (like) anterior debería permanecer en la publicación

    Examples:
      | Acción       | Mensaje de Error                              |
      | Me gusta     | Ya has dado Me gusta a esta publicación.       |
      | Calificar    | Ya has calificado esta publicación previamente. |

  Scenario: Usuario borra una calificación a una publicación
    Given que estoy logueado en mi cuenta de usuario
    And estoy viendo una publicación que he calificado previamente
    When hago clic en el botón de "Eliminar Me gusta" o "Eliminar Calificación"
    Then debería ver un mensaje de confirmación que indica que he eliminado mi calificación con éxito
    And mi calificación (like) previa debería desaparecer de la publicación

    Examples:
      | Acción              | Mensaje de Confirmación                |
      | Eliminar Me gusta   | Has eliminado tu Me gusta de esta publicación. |
      | Eliminar Calificación | Has eliminado tu calificación de esta publicación. |
