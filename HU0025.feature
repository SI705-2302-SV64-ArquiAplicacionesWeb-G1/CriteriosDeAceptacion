Feature: Visualizar Videos Informativos de Reciclaje
  Como usuario de la aplicación de reciclaje,
  Quiero ver videos informativos sobre prácticas de reciclaje y su importancia
  Para aprender más sobre el reciclaje y su impacto en el medio ambiente.

  Scenario: El usuario accede correctamente a la visualización del video
    Given que estoy logueado en mi cuenta de usuario
    When voy a la sección de "Videos Informativos" o "Recursos" en la aplicación
    Then debería ver una lista de videos relacionados con el reciclaje y su importancia
    And debería recibir el mensaje de confirmación "Has accedido a la sección de Videos Informativos."

    Examples:
      | Título del Video          | Descripción                                        | Duración   | Fecha de Publicación |
      | "Importancia del Reciclaje" | "Descubre por qué el reciclaje es crucial para el medio ambiente." | 8:30 min  | 2023-10-05           |
      | "Reciclaje en el Hogar"     | "Consejos prácticos para reciclar en tu casa."                         | 6:45 min  | 2023-09-28           |

  Scenario: El usuario no encuentra o ingresó mal una búsqueda de video
    Given que estoy logueado en mi cuenta de usuario
    When realizo una búsqueda de video incorrecta o que no arroja resultados
    Then no debería ver ningún video en la lista
    And debería ver un mensaje de error que indica "No se encontraron resultados para tu búsqueda."

    Examples:
      | Búsqueda Incorrecta |
      | "Reciclaje en Marte"|
      | "12345"             |

