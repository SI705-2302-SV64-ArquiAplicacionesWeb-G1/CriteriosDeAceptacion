Feature: Confirmación de Registro por Correo Electrónico
  Como usuario de la aplicación de reciclaje,
  Quiero recibir un correo de confirmación después de registrarme
  Para verificar mi dirección de correo electrónico y completar el proceso de registro.

  Scenario: Usuario se registra en la plataforma
    Given que estoy en la página de registro de la aplicación
    When completo el formulario de registro con mi información, incluyendo mi dirección de correo electrónico
    And presiono el botón "Registrarse"
    Then debería ver un mensaje de confirmación que indica que mi registro se ha completado con éxito
    And debería recibir un correo electrónico de confirmación en la dirección proporcionada

    Examples:
      | Correo Electrónico       | Mensaje de Confirmación                                       |
      | usuario@example.com      | Registro completado con éxito. Se ha enviado un correo de confirmación a usuario@example.com.  |
      | prueba@ejemplo.com       | Registro exitoso. Comprueba tu correo electrónico en prueba@ejemplo.com para confirmar tu cuenta. |

  Scenario: Usuario hace clic en el enlace de confirmación
    Given que he recibido un correo electrónico de confirmación
    When abro el correo electrónico y hago clic en el enlace de confirmación
    Then debería ver una página de confirmación en la aplicación que indique que mi dirección de correo electrónico ha sido verificada con éxito
    And debería recibir un mensaje de confirmación en la aplicación

    Examples:
      | Correo Electrónico       |
      | usuario@example.com      |
      | prueba@ejemplo.com       |

  Scenario: Usuario intenta iniciar sesión antes de confirmar el correo
    Given que me he registrado pero no he confirmado mi dirección de correo electrónico
    When intento iniciar sesión en la aplicación
    Then debería recibir un mensaje de error que indica que mi dirección de correo electrónico aún no ha sido verificada y se me debe enviar un correo de confirmación nuevamente
    And debería recibir instrucciones para volver a enviar el correo de confirmación

    Examples:
      | Correo Electrónico       | Mensaje de Error                                             |
      | usuario@example.com      | La dirección de correo electrónico no ha sido verificada. Se te ha enviado un correo de confirmación. |
      | prueba@ejemplo.com       | Correo electrónico no verificado. Por favor, verifica tu correo antes de iniciar sesión.        |

  Scenario: Usuario solicita un nuevo correo de confirmación
    Given que me he registrado pero no he confirmado mi dirección de correo electrónico
    When solicito un nuevo correo de confirmación desde la página de inicio de sesión
    Then debería recibir un nuevo correo electrónico de confirmación en la dirección proporcionada
    And debería ver un mensaje de confirmación que indica que se ha enviado un nuevo correo de confirmación

    Examples:
      | Correo Electrónico       | Mensaje de Confirmación                                       |
      | usuario@example.com      | Se ha enviado un nuevo correo de confirmación a usuario@example.com.  |
      | prueba@ejemplo.com       | Se ha reenviado el correo de confirmación a prueba@ejemplo.com.       |

  Scenario: Usuario no recibe el correo de confirmación
    Given que me he registrado pero no he recibido el correo de confirmación
    When verifico mi carpeta de spam o correo no deseado
    Then debería recibir instrucciones para buscar el correo de confirmación en mi carpeta de spam o correo no deseado
    And debería ver un mensaje que indica cómo verificar la carpeta de spam o correo no deseado

    Examples:
      | Correo Electrónico       | Mensaje de Error                                           |
      | usuario@example.com      | No se ha recibido el correo de confirmación. Revise su carpeta de spam o correo no deseado. |
      | prueba@ejemplo.com       | El correo de confirmación no se encuentra en la bandeja de entrada. Revise su carpeta de spam o correo no deseado. |


