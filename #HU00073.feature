Feature: Comentar en publicaciones 
Como usuario quiero dejar comentarios en los proyectos de otros usuarios para tener una interacción con el usuario autor
    Scenario: Usuario deja un comentario en una publicacion correctamente
        Given que el usuario se encuentra en la Visualización de una publicacion
        And seleccione la opción "comentar" 
        When ingrese su comentario en la caja de texto
        And acceda a la opción " publicar" 
        Then el comentario se visualizará en el apartado de "comentarios de la publicacion"
        And se mostrará un mensaje de  " el comentario de publicó correctamente" 
        Examples: 
        |comentario         |mensaje               | 
        |"Qué lindo trabajo"|"comentario publicado"|

    Scenario: Usuario no deja un comentario en una publicacion porque no llenó el apartado
        Given que el usuario se encuentra en la Visualización de una publicacion
        And  seleccione la opción "comentar" 
        When no ingrese su comentario en la caja de texto
        Then Saldrá un mensaje de error 
        And no se visualizará su comentario 
        Examples:
        |comentario         |mensaje                                 | 
        |"                 "|"NO ha escrito nada en la caja de texto"|

    