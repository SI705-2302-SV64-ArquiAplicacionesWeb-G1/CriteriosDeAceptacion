Feature: ##HU0019 - Comentarios en Proyectos

Como usuario
Quiero dejar comentarios en los proyectos de otros usuarios
Para tener una interacción con el usuario autor

Scenario: Usuario deja un comentario en un proyecto

Dado que soy un usuario autenticado en la plataforma
Y estoy viendo un proyecto de otro usuario
Cuando ingreso el siguiente comentario:
    """
    Este proyecto es increíble. ¡Buen trabajo!
    """
Y hago clic en el botón "Enviar comentario"
Entonces mi comentario se publica en el proyecto y se muestra con mi identidad

Examples: Input
    | Comentario                                  |
    | "Gran trabajo en este proyecto."            |


Examples: Output
    | Proyecto                          |
    | Comentario visible con mi nombre de usuario y fecha de publicación |
    | Mensaje de confirmación de publicación del comentario               |
    | Notificación al autor del proyecto sobre el nuevo comentario       |

Scenario: Usuario edita su comentario en un proyecto

Dado que soy un usuario autenticado en la plataforma
Y he dejado un comentario en un proyecto
Cuando edito mi comentario existente con el siguiente texto:
    """
    Este proyecto es aún mejor de lo que pensé inicialmente.
    """
Y hago clic en el botón "Guardar cambios"
Entonces mi comentario editado se refleja correctamente en el proyecto

Examples: Input
    | Comentario                                  |
    | "Gran trabajo en este proyecto."            |

Examples: Output
    | Proyecto                          |
    | Comentario visible con mi nombre de usuario y fecha de edición    |
    | Mensaje de confirmación de edición del comentario                 |

Scenario: Usuario elimina su comentario en un proyecto

Dado que soy un usuario autenticado en la plataforma
Y he dejado un comentario en un proyecto
Cuando elimino mi comentario existente
Entonces mi comentario se elimina correctamente del proyecto

Examples: Output
    | Proyecto                          |
    | Comentario eliminado y no visible en el proyecto                |
    | Mensaje de confirmación de eliminación del comentario           |

