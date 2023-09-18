Feature: ##HU0042 - Eliminar Material Reciclable del Perfil

Como usuario
Quiero tener la capacidad de eliminar un tipo de material reciclable de mi perfil
Si ya no lo reciclo o si fue ingresado incorrectamente

Scenario: Usuario elimina un material reciclable de su perfil

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mi Perfil"
Cuando selecciono un material reciclable existente de mi lista de materiales
Y elijo la opción "Eliminar Material Reciclable"
Entonces el material reciclable seleccionado se elimina de mi perfil

Examples: Input
    | Material Reciclable a Eliminar  |
    | Material: Papel                 |
    | Material: Plástico              |
    | Material: Vidrio                |

Examples: Output
    | Material Reciclable Eliminado  |
    | Material: Papel                |
    | Material: Plástico             |
    | Material: Vidrio               |

Scenario: Usuario cancela la eliminación de un material reciclable

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mi Perfil"
Cuando selecciono un material reciclable existente de mi lista de materiales
Y elijo la opción "Eliminar Material Reciclable"
Y luego cancelo la operación de eliminación
Entonces el material reciclable no se elimina y permanece en mi perfil

Examples: Input
    | Material Reciclable a No Eliminar |
    | Material: Cartón                   |
    | Material: Metal                    |
    | Material: Vidrio                   |

Examples: Output
    | Material Reciclable No Eliminado  |
    | Material: Cartón                  |
    | Material: Metal                   |
    | Material: Vidrio                  |


