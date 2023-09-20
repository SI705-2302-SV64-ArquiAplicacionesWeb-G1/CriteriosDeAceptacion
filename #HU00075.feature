Feature: Crear publicaciòn
Como usuario quiero crear una publicación
Scenario: Usuario crea una publicacion adecuadamente
    Given que el usuario se encuetra en el apartado de publicaciones
    And le de a la opción de realizar publicación 
    And se aperture la sección de "creación de publicacion"
    When llene los campos de descripción y los otros campos
    Then Aparecerá un mensaje de confirmación y se realizará la creación de la publicacion
    Examples:
        | Descripción            |tipo de recurso |recurso       |  Mensaje                                    | 
        |  Un día de reciclaje   |imagen          |imagen.png    | Se hizo correctamente la publicacion        |


Scenario: Usuario crea una publicacion adecuadamente
    Given que el usuario se encuetra en el apartado de publicaciones
    And le de a la opción de realizar publicación 
    And se aperture la sección de "creación de publicacion"
    When llene los campos de descripción y los otros campos
    Then Aparecerá un mensaje de confirmación y se realizará la creación de la publicacion
    Examples:
        | Descripción            |tipo de recurso |recurso       |  Mensaje                                    | 
        |  Un día de reciclaje   |imagen          |imagen.png    | Se hizo correctamente la publicacion        |
