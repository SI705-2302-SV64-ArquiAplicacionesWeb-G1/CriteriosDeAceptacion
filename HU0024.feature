Feature: Recibir Alertas por Alcanzar Metas de Reciclaje
  Como usuario de la aplicación de reciclaje,
  Quiero recibir alertas cuando alcance ciertas metas relacionadas con mis actividades de reciclaje
  Para mantenerme motivado y seguir contribuyendo al reciclaje.

  Scenario: El usuario recibe una alerta que alcanzó una meta
    Given que estoy logueado en mi cuenta de usuario
    And he realizado actividades de reciclaje que me han ayudado a alcanzar una meta
    When alcanzo una meta predefinida, como reciclar una cierta cantidad de materiales o participar en eventos de reciclaje
    Then debería recibir una alerta de confirmación que indica "¡Has alcanzado una nueva meta de reciclaje!"
    And debería ver información adicional sobre la meta alcanzada

    Examples:
      | Actividad de Reciclaje       | Meta Alcanzada                 | Mensaje de Confirmación                      |
      | Reciclaje de 100 botellas    | Reciclaje de 100 botellas       | ¡Has alcanzado una nueva meta de reciclaje!   |
      | Participación en 5 eventos   | Participación en 5 eventos      | ¡Has alcanzado una nueva meta de reciclaje!   |

  Scenario: El usuario no recibe una alerta pero ve su progreso
    Given que estoy logueado en mi cuenta de usuario
    And he realizado actividades de reciclaje que contribuyen al progreso de mis metas
    When reviso mi progreso en la sección de "Metas de Reciclaje" en la aplicación
    Then no debería recibir una alerta, pero debería ver el progreso hacia mis metas actualizado en la aplicación
    And debería ver un mensaje de confirmación que indica "Tu progreso de reciclaje se ha actualizado."

    Examples:
      | Actividad de Reciclaje       | Progreso de Meta               | Mensaje de Confirmación                  |
      | Reciclaje de 50 botellas     | 50%                           | Tu progreso de reciclaje se ha actualizado. |
      | Participación en 3 eventos   | 30%                           | Tu progreso de reciclaje se ha actualizado. |

  Scenario: El usuario recibe una alerta que no está teniendo progreso en sus metas
    Given que estoy logueado en mi cuenta de usuario
    And he establecido metas de reciclaje en la aplicación
    And no he realizado actividades de reciclaje que contribuyan al progreso de mis metas
    When reviso mi progreso en la sección de "Metas de Reciclaje" en la aplicación
    Then debería recibir una alerta que indica "Aún no has alcanzado ninguna de tus metas de reciclaje."
    And debería ver un mensaje de confirmación que indica "Revisa tus metas y comienza a reciclar para alcanzarlas."

    Examples:
      | Metas Establecidas | Progreso Actual | Mensaje de Alerta                                     | Mensaje de Confirmación                                          |
      | Reciclar 100 botellas| 0%             | Aún no has alcanzado ninguna de tus metas de reciclaje. | Revisa tus metas y comienza a reciclar para alcanzarlas.           |
      | Participar en 10 eventos| 0%           | Aún no has alcanzado ninguna de tus metas de reciclaje. | Revisa tus metas y comienza a reciclar para alcanzarlas.           |

