Feature: ##HU0048 - Historial de Reciclaje

Como usuario
Quiero ver un registro de mi historial de reciclaje
Detallando los materiales reciclados en fechas anteriores

Scenario: Usuario visualiza su historial de reciclaje

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mi Historial de Reciclaje"
Cuando navego por la lista de registros de reciclaje
Entonces veo una lista de materiales reciclados con detalles como el nombre del material y la fecha de reciclaje

Examples: Output
    | Historial de Reciclaje             |
    | Material: Papel, Fecha: 2023-09-01 |
    | Material: Plástico, Fecha: 2023-09-05 |
    | Material: Vidrio, Fecha: 2023-09-10 |

Examples: Output
    | Resultados de Historial de Reciclaje   |
    | Material: Papel, Fecha: 2023-09-01     |
    | Material: Plástico, Fecha: 2023-09-05  |
    | Material: Vidrio, Fecha: 2023-09-10    |

Scenario: Historial de reciclaje vacío

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mi Historial de Reciclaje"
Cuando no tengo registros de reciclaje anteriores
Entonces veo un mensaje que indica que mi historial de reciclaje está vacío

Examples: Output
    | Mensaje de Historial de Reciclaje Vacío  |
    | No tienes registros de reciclaje anteriores. |
