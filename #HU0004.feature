Feature: Buscar publicaciones por relevancia
  Como usuario de la aplicación de reciclaje,
  Quiero poder buscar proyectos más populares
  Para conocer ideas innovadoras sobre el reciclaje.

  Scenario: Usuario busca proyectos más populares
    Given que estoy en la página de inicio de la aplicación
    When ingreso "reciclaje" en la barra de búsqueda
    And presiono el botón de búsqueda
    Then debería ver una lista de publicaciones relacionadas con "reciclaje"
    And las publicaciones deberían estar ordenadas por relevancia, con las más populares primero
    And debería ver información relevante de cada publicación, como el título, el autor y el número de likes

    Examples:     
      | Palabra Clave |Publicacion|
      | reciclaje     |"nuevo materialde Reciclaje"           |
      | medio ambiente|"mejor material para el medio ambiente"|
      | ayuda         |"Ayuda al planeta"                     |

  Scenario: Usuario busca proyectos más populares con palabras clave específicas
    Given que estoy en la página de inicio de la aplicación
    When ingreso "plástico" en la barra de búsqueda
    And presiono el botón de búsqueda
    Then debería ver una lista de publicaciones relacionadas con "plástico"
    And las publicaciones deberían estar ordenadas por relevancia, con las más populares primero
    And debería ver información relevante de cada publicación, como el título, el autor y el número de likes

    Examples:     
      | Palabra Clave |Publicacion                            |
      | reciclaje     |"nuevo materialde Reciclaje"           |
      | medio ambiente|"mejor material para el medio ambiente"|
      | ayuda         |"Ayuda al planeta"                     |

  Scenario: Usuario busca proyectos más populares y no encuentra resultados
    Given que estoy en la página de inicio de la aplicación
    When ingreso "tecnología" en la barra de búsqueda
    And presiono el botón de búsqueda
    Then debería ver un mensaje que indica que no se encontraron resultados relacionados con "tecnología"

    Examples:
      | Palabra Clave |Publicacion                    |
      | tecnología    |"No se encontraron resultados" |
      | innovación    |"No se encontraron resultados" |
      | electrónica   |"No se encontraron resultados" |
