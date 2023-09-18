Feature: ##HU0021 - Búsqueda de Proyectos por Fecha de Publicación

Como usuario
Quiero poder buscar proyectos por su fecha de publicación
Para encontrar proyectos que se ajusten a una fecha específica

Scenario: Usuario realiza una búsqueda por fecha de publicación

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de búsqueda de proyectos
Cuando ingreso una fecha específica en el campo de búsqueda de fecha de publicación
Y presiono el botón "Buscar"
Entonces veo una lista de proyectos que fueron publicados en la fecha ingresada

Examples: Input
    | Búsqueda de Fecha de Publicación |
    | 2023-09-15                       |    

Examples: Output
    | Resultados de Búsqueda de Proyectos   |
    | Lista de proyectos publicados el 2023-09-15 |

Scenario: Búsqueda sin resultados

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de búsqueda de proyectos
Cuando ingreso una fecha que no coincide con ninguna fecha de publicación en el campo de búsqueda
Y presiono el botón "Buscar"
Entonces veo un mensaje que indica que no se encontraron resultados para esa fecha

Examples: Input
    | Búsqueda de Fecha de Publicación  |
    | 2023-09-01                        |

Examples: Output
    | Resultados de Búsqueda de Proyectos  |
    | Mensaje que indica "No se encontraron resultados para esta fecha" |

