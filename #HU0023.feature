Feature: ##HU0023 - Visualización de Costos de Materiales Reciclados

Como usuario
Quiero ver los costos asociados a los materiales reciclados
Para llevar un seguimiento de ellos

Scenario: Usuario visualiza los costos de materiales reciclados

Dado que soy un usuario autenticado en la plataforma
Y estoy en la sección de "Materiales Reciclados"
Cuando navego por la lista de materiales reciclados
Entonces veo una lista de materiales con sus costos asociados

Examples: Output
    | Lista de Materiales Reciclados con sus costos |

Scenario: Detalles de costos de un material específico

Dado que soy un usuario autenticado en la plataforma
Y estoy en la sección de "Materiales Reciclados"
Cuando hago clic en un material específico de la lista
Entonces veo los detalles del material, incluido su costo

Examples: Input
    | Material seleccionado |
    | Material: Papel |

Examples: Output
    | Detalles del Material Reciclado |
    | Material: Papel, Costo: $10.00 |

Scenario: Búsqueda de materiales reciclados por costo

Dado que soy un usuario autenticado en la plataforma
Y estoy en la sección de "Materiales Reciclados"
Cuando ingreso un rango de costo en el campo de búsqueda
Y presiono el botón "Buscar"
Entonces veo una lista de materiales que están dentro del rango de costo ingresado

Examples: Input
    | Búsqueda de Costo                 |
    | Rango de costo: $5.00 - $10.00    |


Examples: Output
    | Resultados de Búsqueda de Materiales Reciclados |
    | Material: Papel, Costo: $10.00   |
    | Material: Vidrio, Costo: $8.00   |
    | Material: Plástico, Costo: $5.00 |
