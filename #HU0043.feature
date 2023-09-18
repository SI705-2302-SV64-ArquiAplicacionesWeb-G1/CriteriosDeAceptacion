Feature: ##HU0043 - Editar Información de Material Reciclable en el Perfil

Como usuario
Deseo poder editar la información de un tipo de material reciclable que ya he agregado a mi perfil,
como su nombre o instrucciones de reciclaje actualizadas

Scenario: Usuario edita información de un material reciclable en su perfil

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mi Perfil"
Cuando selecciono un material reciclable existente de mi lista de materiales
Y elijo la opción "Editar Material Reciclable"
Y actualizo la información
Y presiono el botón "Guardar cambios"
Entonces la información del material reciclable seleccionado se actualiza con los datos editados

Examples: Input
    | Material Reciclable a Editar        |
    | Material: Papel                     |
    | Material: Plástico                  |
    | Material: Vidrio                    |

Examples: Output
    | Material Reciclable Editado        |
    | Material: Papel modificado        |
    | Material: Plástico modificado     |
    | Material: Vidrio modificado       |

Scenario: Usuario cancela la edición de un material reciclable

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mi Perfil"
Cuando selecciono un material reciclable existente de mi lista de materiales
Y elijo la opción "Editar Material Reciclable"
Y luego cancelo la operación de edición
Entonces la información del material reciclable no se actualiza y permanece sin cambios

Examples: Input
    | Material Reciclable a No Editar     |
    | Material: Cartón                    |
    | Material: Metal                     |
    | Material: Vidrio                    |

Examples: Output
    | Material Reciclable No Editado      |
    | Material: Cartón                   |
    | Material: Metal                    |
    | Material: Vidrio                   |

