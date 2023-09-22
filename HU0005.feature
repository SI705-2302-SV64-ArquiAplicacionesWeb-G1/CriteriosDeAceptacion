Feature: Programar Manualidades

  Como usuario de WeRecycle,
  Quiero poder programar manualidades para llevar a cabo actividades relacionadas con el reciclaje.

  Scenario: Usuario programa correctamente su recordatorio de manualidad con ubicación
    Given que estoy logueado en mi cuenta de usuario
    When voy a la sección de "Programar Manualidades" o "Agendar Actividades"
    And lleno todos los campos requeridos, como nombre de la manualidad, fecha, hora, descripción y ubicación
    And confirmo la programación de la manualidad
    Then debería ver un mensaje de confirmación que indica que la manualidad se ha programado con éxito
    And la manualidad debería quedar registrada en mi lista de manualidades programadas con la ubicación especificada

    Examples:
      | Nombre de la Manualidad | Fecha       | Hora   | Descripción                | Ubicación           | Mensaje de Confirmación                        |
      | Reciclaje en el Parque  | 2023-10-15  | 14:00  | Recogida de plásticos      | Parque Central      | La manualidad se ha programado con éxito       |
      | Limpieza de Playa       | 2023-09-25  | 09:30  | Limpieza de playa local    | Playa del Este      | La manualidad se ha programado con éxito       |

  Scenario: Usuario no llenó todos los campos respectivos y recibe un mensaje de error
    Given que estoy logueado en mi cuenta de usuario
    When voy a la sección de "Programar Manualidades" o "Agendar Actividades"
    And no lleno todos los campos requeridos, como omitir el nombre de la manualidad, la fecha o la ubicación
    And trato de confirmar la programación de la manualidad
    Then debería ver un mensaje de error que indica que faltan campos obligatorios por completar, incluyendo la ubicación
    And la manualidad no debería ser programada ni registrada en mi lista de manualidades programadas

    Examples:
      | Nombre de la Manualidad | Fecha       | Hora   | Descripción                | Ubicación           | Mensaje de Error                                       |
      |                       | 2023-10-15  | 14:00  | Recogida de plásticos      | Parque Central      | Faltan campos obligatorios por completar, incluyendo la ubicación |
      | Limpieza de Playa       | 2023-09-25  |         | Limpieza de playa local    | Playa del Este      | Faltan campos obligatorios por completar, incluyendo la ubicación |
