Feature: ##HU0020- Búsqueda de Proyectos por Nombre

Como usuario
Quiero poder buscar proyectos por su nombre
Para encontrar rápidamente proyectos específicos

Scenario: Usuario realiza una búsqueda por nombre de proyecto

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de búsqueda de proyectos
Cuando ingreso el nombre de un proyecto en el campo de búsqueda
Y presiono el botón "Buscar"
Entonces veo una lista de proyectos que coinciden con el nombre ingresado

Examples: Input
    | Búsqueda       |
    | "Proyecto A"   |    

Examples: Output
    | Resultados de Búsqueda de Proyectos           |
    | Lista de proyectos que contienen "Proyecto A" |


Scenario: Búsqueda sin resultados

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de búsqueda de proyectos
Cuando ingreso un nombre de proyecto que no existe en el campo de búsqueda
Y presiono el botón "Buscar"
Entonces veo un mensaje que indica que no se encontraron resultados

Examples: Input
    | Búsqueda                               |
    | "Proyecto Inexistente"                 |
    | "Nombre de Proyecto No Encontrado"     |

Examples: Output
    | Resultados de Búsqueda de Proyectos  |
    | Mensaje que indica "No se encontraron resultados" |
