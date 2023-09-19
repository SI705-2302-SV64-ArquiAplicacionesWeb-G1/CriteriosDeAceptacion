Feature: Recibir Invitaciones de Eventos de Reciclaje
  Como usuario de la aplicación de reciclaje,
  Quiero recibir invitaciones sobre eventos de reciclaje en mi área
  Para estar al tanto de los eventos y actividades relacionados con el reciclaje.

  Scenario: Usuario recibe una invitación a un evento de reciclaje
    Given que estoy logueado en mi cuenta de usuario
    And sigo al evento de reciclaje programado en mi área
    When el organizador del evento envía una invitación
    Then debería recibir una notificación que me informa sobre la invitación al evento
    And debería ver el mensaje de confirmación "Has recibido una invitación al evento de reciclaje."

    Examples:
      | Mensaje de Confirmación                                   |
      | Has recibido una invitación al evento de reciclaje.       |

  Scenario: Usuario no recibe una invitación porque no sigue a ningún evento
    Given que estoy logueado en mi cuenta de usuario
    And no sigo a ningún evento de reciclaje programado en mi área
    When el organizador del evento envía una invitación
    Then no debería recibir ninguna notificación de invitación
    And debería ver el mensaje de error "No sigues ningún evento de reciclaje en tu área."

    Examples:
      | Mensaje de Error                                       |
      | No sigues ningún evento de reciclaje en tu área.       |

  Scenario: Usuario recibe una notificación de cancelación de invitación
    Given que he recibido una invitación a un evento de reciclaje
    When el organizador del evento cancela la invitación
    Then debería recibir una notificación que me informa sobre la cancelación de la invitación
    And debería ver el mensaje de confirmación "La invitación al evento de reciclaje ha sido cancelada."

    Examples:
      | Mensaje de Confirmación                               |
      | La invitación al evento de reciclaje ha sido cancelada. |

