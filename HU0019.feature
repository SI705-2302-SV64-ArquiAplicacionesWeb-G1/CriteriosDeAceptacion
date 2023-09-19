Feature: Enviar Notificaciones por Correo sobre Reciclaje

  Scenario: Usuario recibió correctamente las notificaciones por correo
    Given que estoy logueado en mi cuenta de usuario
    And tengo la opción de recibir notificaciones por correo activada
    When la aplicación envía notificaciones por correo sobre reciclaje
    Then debería recibir un correo electrónico con las notificaciones
    And debería ver un mensaje de confirmación que indica que las notificaciones se han enviado con éxito

    Examples:
      | Opción de Notificaciones | Mensaje de Confirmación                                    |
      | Activada                 | Se han enviado las notificaciones por correo exitosamente. |
      | Desactivada              | No se han enviado notificaciones por correo.                |

  Scenario: Usuario no recibió una notificación por correo y la aplicación le dice que no registró un correo
    Given que estoy logueado en mi cuenta de usuario
    And tengo la opción de recibir notificaciones por correo activada
    And no tengo una dirección de correo electrónico registrada en mi perfil
    When la aplicación intenta enviar notificaciones por correo sobre reciclaje
    Then no debería recibir ningún correo electrónico de notificación
    And debería ver un mensaje de error que indica que no tengo una dirección de correo electrónico registrada

    Examples:
      | Opción de Notificaciones | Mensaje de Error                                            |
      | Activada                 | No se ha registrado una dirección de correo electrónico.   |
      | Desactivada              | No se han enviado notificaciones por correo.                |

