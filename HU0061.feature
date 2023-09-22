Feature: Registrar Asistencia a Eventos
  Como usuario de la aplicación de reciclaje,
  Quiero poder registrarme para asistir a eventos de reciclaje
  Para participar en actividades relacionadas con el reciclaje.

  Scenario: Usuario se registra correctamente a un evento
    Given que estoy logueado en mi cuenta de usuario
    And he recibido una invitación a un evento de reciclaje
    When ingreso los datos requeridos para registrarme al evento
    Then debería ver un mensaje de confirmación que indica que mi registro al evento se ha completado con éxito
    And debería estar registrado como asistente al evento

    Examples:
      | Mensaje de Confirmación                                |
      | Has sido registrado exitosamente para el evento.       |

  Scenario: Usuario no ingresa los datos correctamente y no se registra
    Given que estoy logueado en mi cuenta de usuario
    And he recibido una invitación a un evento de reciclaje
    When intento registrarme al evento sin ingresar los datos requeridos
    Then debería ver un mensaje de error que indica que los datos ingresados son incorrectos
    And no debería estar registrado como asistente al evento

    Examples:
      | Mensaje de Error                              |
      | Los datos ingresados son incorrectos.         |

  Scenario: Se cancela el evento y se cancela su registro
    Given que estoy logueado en mi cuenta de usuario
    And he recibido una invitación a un evento de reciclaje
    And he registrado mi asistencia al evento
    When el organizador del evento cancela el evento
    Then debería ver un mensaje de confirmación que indica que el evento ha sido cancelado
    And mi registro al evento debería ser cancelado automáticamente

    Examples:
      | Mensaje de Confirmación                      |
      | El evento ha sido cancelado.                 |

  Scenario: Se registra a un evento que ya pasó su tiempo de registro y le sale error
    Given que estoy logueado en mi cuenta de usuario
    And he recibido una invitación a un evento de reciclaje
    And el evento ya ha pasado su tiempo de registro
    When intento registrarme al evento
    Then debería ver un mensaje de error que indica que el tiempo de registro para este evento ha expirado
    And no debería estar registrado como asistente al evento

    Examples:
      | Mensaje de Error                              |
      | El tiempo de registro para este evento ha expirado. |

