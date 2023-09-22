Feature: Interactuar con el Chat Box de Ayuda

  Como usuario de la aplicación de reciclaje,
  Quiero visualizar un ChatBot para poder realizar cualquier consulta o duda que tenga con la plataforma
  Para obtener ayuda y resolver mis preguntas de manera eficiente.

  Scenario: Usuario accede correctamente y habla con el ChatBot
    Given que estoy logueado en mi cuenta de usuario
    When accedo al Chat Box de Ayuda en la aplicación
    And escribo una pregunta válida al ChatBot
    Then debería recibir una respuesta útil y adecuada del ChatBot
    And debería poder continuar la conversación para obtener más información o ayuda

    Examples:
      | Pregunta del Usuario | Respuesta del ChatBot                       |
      | ¿Cómo reciclar vidrio? | El ChatBot proporciona información sobre el reciclaje de vidrio.  |
      | ¿Horario de atención?  | El ChatBot muestra los horarios de atención.                  |

  Scenario: Usuario ingresa mal una pregunta y el ChatBot no entiende la pregunta
    Given que estoy logueado en mi cuenta de usuario
    When accedo al Chat Box de Ayuda en la aplicación
    And escribo una pregunta que no se entiende o contiene errores
    Then debería recibir una respuesta del ChatBot que indica que la pregunta no se comprende
    And el ChatBot debería solicitar al usuario que reformule la pregunta

    Examples:
      | Pregunta del Usuario | Respuesta del ChatBot                           |
      | kjadlkadjsf           | El ChatBot responde: "Lo siento, no entiendo la pregunta. Por favor, reformula tu consulta." |
      | ¿lkjaf laksf?         | El ChatBot responde: "Por favor, reformula tu pregunta de manera más clara."                 |

  Scenario: Usuario hace una pregunta fuera de contexto y el ChatBot lo redirige
    Given que estoy logueado en mi cuenta de usuario
    When accedo al Chat Box de Ayuda en la aplicación
    And escribo una pregunta que no está relacionada con la aplicación de reciclaje
    Then debería recibir una respuesta del ChatBot que indica que la pregunta está fuera de contexto
    And el ChatBot debería pedir al usuario que se limite a hacer preguntas relacionadas con la aplicación

    Examples:
      | Pregunta del Usuario            | Respuesta del ChatBot                                         |
      | ¿Cómo está el clima hoy?        | El ChatBot responde: "Esta pregunta está fuera de contexto. Por favor, haz preguntas relacionadas con la aplicación de reciclaje." |
      | ¿Qué noticias hay hoy?          | El ChatBot responde: "Por favor, limita tus preguntas a temas relacionados con la aplicación de reciclaje."               |
