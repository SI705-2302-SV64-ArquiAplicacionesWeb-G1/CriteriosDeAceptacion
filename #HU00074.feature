Feature: Modificar cuenta de usuario
Como usuario quiero modificar mi cuenta

    Scenario: usuario cambia los datos de su cuenta
     Given que el usuario se encuentra en el apartado de perfil
     And seleccione la opción de modificar perfil
     When modifique alguno de los cambios de Usuario como "Ubicación" o " nombre de usuario" o "contraseña "
     And ingrese su contraseña anterior en el apartado "ingresa contraseña actual"
     Then se validará su contraseña actual 
     And se mostrará un mensaje de confirmación
     And se actualizarán los datos cambiados 
     Examples:
        |Ubicación  | Nombre de usuario  | nueva contraseña| contraseña actual  |Mensaje|
        |San Juan   | Piero              | Todoporti1234!  | Todoporti          |Se modificaron los datos       |
        |Callao     | Piero              |                 | Todoporti          |Se modificaron los datos       |
        |San Juan   | Carlos             |                 | Todoporti          |Se modificaron los datos       |
                

    Scenario: usuario no cambia los datos de su cuenta porque no modificó ningún datos
     Given que el usuario se encuentra en el apartado de perfil
     And seleccione la opción de modificar perfil
     When no modifique alguno de los cambios de Usuario como "Ubicación" o " nombre de usuario" o "contraseña "
     And ingrese su contraseña anterior en el apartado "ingresa contraseña actual"
     Then se validará su contraseña actual 
     And se mostrará un mensaje de error
     And no se actualizarán los datos cambiados 
     Examples:
        |Ubicación  | Nombre de usuario  | nueva contraseña| contraseña actual  |Mensaje|
        |San Juan   | Piero              |                 | Todoporti          |No se cambiaron los datos porque no modificó ningún campo|

    Scenario: usuario no ingresa correctamente su contraseña actual y no se cambian los datos
     Given que el usuario se encuentra en el apartado de perfil
     And seleccione la opción de modificar perfil
     When modifique alguno de los cambios de Usuario como "Ubicación" o " nombre de usuario" o "contraseña "
     And  no ingrese su contraseña anterior en el apartado "contraseña actual"
     Then no se validará su contraseña actual 
     And  se mostrará un mensaje de error
     And  no se actualizarán los datos cambiados 
     Examples:
        |Ubicación  | Nombre de usuario  | nueva contraseña| contraseña actual  |Mensaje|
        |San Juan   | Piero              |                 |                    |ingresó una contraseña Incorrecta       |
        |Callao     | Piero              |                 |         dsafqsd    |ingresó una contraseña Incorrecta|
        |San Juan   | Carlos             |                 |                    |ingresó una contraseña Incorrecta|
      
                
