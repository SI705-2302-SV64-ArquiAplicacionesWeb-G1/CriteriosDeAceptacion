Feature: Modificar comentarios de publicaciòn
Como usuario quiero modificar mi comentario en una publicación
 
 Scenario:Usuario modifica correctamente su comentario en una publicacion
    Given que se encuentra en la sección de comentarios
    And ha seleccionado su comentario 
    And acceda a la opción de "modificar comentario"
    When Cambia el contenido de la caja de texto 
    And le de a confirmar Modificacion
    Then el contenido del comentario ses actualizará y se mostrará un mensaje de confirmación
    Examples: 
    |Comentario anterior| comentario actualizado    | Mensaje de confirmación  |
    |Qué buen trabajo   |increíble trabajo          | Se cambiaron los cambios |     


 Scenario:Usuario no modifica correctamente su comentario en una publicacion porque no hizo ningún cambio
    Given que se encuentra en la sección de comentarios
    And ha seleccionado su comentario 
    And acceda a la opción de "modificar comentario"
    When No cambia el contenido de la caja de texto 
    And le de a confirmar Modificacion
    Then Se mostrará un mensaje de error diciendo que no hizo ningún cambio y no se actualizará el comentario
    Examples: 
    |Comentario anterior|comentario actualizado| Mensaje de confirmación                        |
    |Qué buen trabajo   |Qué buen trabajo      |Tiene que ingresar cambios para poder modificar |     



