Feature: Recibir Notificaciones Periódicas para Acciones de Reciclaje
  Como usuario de la aplicación de reciclaje,
  Quiero recibir notificaciones periódicas para recordarme realizar acciones de reciclaje
  Para mantenerme comprometido con el reciclaje de manera regular.

  Scenario: Usuario recibe una notificación periódica programada
    Given que he configurado notificaciones periódicas para las acciones de reciclaje con un recordatorio diario a las 10:00 AM
    When llega el día y la hora programados (10:00 AM)
    Then debería recibir una notificación periódica que me recuerda realizar una acción de reciclaje
    And debería ver el mensaje de confirmación "Has recibido la notificación programada con éxito."

    Examples:
      | Hora Programada | Mensaje de Confirmación                       |
      | 10:00 AM        | Has recibido la notificación programada con éxito. |

  Scenario: Usuario no recibe una notificación periódica porque las desactivó
    Given que he configurado notificaciones periódicas para las acciones de reciclaje con un recordatorio diario a las 10:00 AM
    And he desactivado las notificaciones periódicas
    When llega el día y la hora programados (10:00 AM)
    Then no debería recibir ninguna notificación
    And debería ver el mensaje de error "No has recibido la notificación porque tienes las notificaciones periódicas desactivadas."

    Examples:
      | Hora Programada | Mensaje de Error                                         |
      | 10:00 AM        | No has recibido la notificación porque tienes las notificaciones periódicas desactivadas. |

  Scenario: Usuario recibe una notificación periódica a la nueva hora programada
    Given que he configurado notificaciones periódicas para las acciones de reciclaje con un recordatorio diario a las 2:00 PM
    When llega el día y la hora programados (2:00 PM)
    Then debería recibir una notificación periódica que me recuerda realizar una acción de reciclaje
    And debería ver el mensaje de confirmación "Has recibido la notificación programada con éxito."

    Examples:
      | Hora Programada | Mensaje de Confirmación                       |
      | 2:00 PM         | Has recibido la notificación programada con éxito. |


