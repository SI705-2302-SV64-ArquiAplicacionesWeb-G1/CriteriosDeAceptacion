Feature: ##HU0041 - Agregar Nuevo Material Reciclable al Perfil

Como usuario
Quiero poder agregar un nuevo tipo de material reciclable a mi perfil
Especificando su nombre y cualquier información relevante, como instrucciones de reciclaje

Scenario: Usuario agrega un nuevo material reciclable a su perfil

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mi Perfil"
Cuando selecciono la opción "Agregar Nuevo Material Reciclable"
Y completo el formulario con la siguiente información:
    | Nombre del Material Reciclable | Instrucciones de Reciclaje                |
    | Papel                          | Depositar en el contenedor de papel.     |
Y presiono el botón "Guardar"
Entonces el nuevo material reciclable se agrega a mi perfil con la información proporcionada

Examples: Input
    | Nombre del Material Reciclable | Instrucciones de Reciclaje            |
    | Plástico                        | Colocar en el contenedor de plástico. |
    | Vidrio                          | Reciclar en el contenedor de vidrio.  |
    | Cartón                          | Depositar en el contenedor de cartón. |

Examples: Output
    | Material Reciclable Agregado  |
    | Nombre del Material: Papel   |
    | Instrucciones de Reciclaje: Depositar en el contenedor de papel. |

Scenario: Validación de datos al agregar nuevo material reciclable

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mi Perfil"
Cuando selecciono la opción "Agregar Nuevo Material Reciclable"
Y completo el formulario con información incorrecta o faltante
Y presiono el botón "Guardar"
Entonces veo mensajes de validación que indican los errores y no se agrega el material reciclable incorrecto

Examples: Input
    | Nombre del Material Reciclable | Instrucciones de Reciclaje |
    |                                |                            |
    | Plástico                       |                            |
    | Vidrio                         |                            |
    | Cartón                         |                            |

Examples: Output
    | Mensajes de Validación  |
    | El nombre del material es obligatorio. |
    | Las instrucciones de reciclaje son obligatorias. |

