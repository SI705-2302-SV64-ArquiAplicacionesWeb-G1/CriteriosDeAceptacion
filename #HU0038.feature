Feature: ##HU0038 - Visualización del Número de Vistas en Publicaciones

Como usuario
Quiero visualizar el número total de vistas en mis publicaciones
Para tener una idea de cuántas personas han visto mis contenidos

Scenario: Usuario visualiza el número de vistas en una publicación

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mis Publicaciones"
Cuando selecciono una de mis publicaciones
Entonces veo el número total de vistas de esa publicación

Examples: Output
    | Publicación seleccionada     |
    | Título: Mi Primer Artículo   |
    | Número total de vistas: 100  |

Scenario: Usuario visualiza el número de vistas en varias publicaciones

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de "Mis Publicaciones"
Cuando navego por la lista de mis publicaciones
Entonces veo el número total de vistas de cada publicación

Examples: Output
    | Lista de Mis Publicaciones   |
    | Título: Mi Primer Artículo, Número total de vistas: 100  |
    | Título: Guía de Reciclaje, Número total de vistas: 50    |
    | Título: Mis Fotos de Viaje, Número total de vistas: 200  |

Scenario: Visualización de número de vistas en resumen de perfil

Dado que soy un usuario autenticado en la plataforma
Y estoy en la página de resumen de mi perfil
Cuando miro mi perfil
Entonces veo el número total de vistas de todas mis publicaciones

Examples: Output
    | Resumen del Perfil             |
    | Número total de vistas: 350    |
