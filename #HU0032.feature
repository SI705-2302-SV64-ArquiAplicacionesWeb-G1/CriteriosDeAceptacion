Feature: Subir Archivos en las Publicaciones
  Como usuario de la aplicación de reciclaje,
  Quiero poder subir imágenes, videos o archivos adjuntos en mis publicaciones
  Para que los demás usuarios puedan conocer mejor mi proyecto de reciclaje.

  Scenario: Usuario crea una nueva publicación con archivo adjunto
    Given que estoy logueado en mi cuenta de usuario
    When voy a la sección de "Crear Publicación" en la aplicación
    And creo una nueva publicación
    And adjunto un archivo, como una imagen (archivo.jpg) o video (video.mp4), a la publicación
    Then debería ver un mensaje de confirmación que indica que la publicación se ha creado con éxito, incluyendo el archivo adjunto

    Examples:
      | Tipo de Archivo | Mensaje de Confirmación |
      | imagen.jpg      | La publicación se ha creado con éxito, incluyendo el archivo adjunto |
      | video.mp4       | La publicación se ha creado con éxito, incluyendo el archivo adjunto |

  Scenario: Usuario sube un archivo incorrecto
    Given que estoy logueado en mi cuenta de usuario
    When voy a la sección de "Crear Publicación" en la aplicación
    And creo una nueva publicación
    And adjunto un archivo, como un archivo de texto (archivo.txt) o un archivo ejecutable (archivo.exe), que no sea una imagen o video   
    Then debería ver un mensaje de error que indica que la publicación no se ha creado con éxito, porque el tipo de archivo no es correcto

    Examples:
      | Tipo de Archivo | Mensaje de Error                       |
      | archivo.txt     | El tipo de archivo no es correcto      |
      | archivo.exe     | El tipo de archivo no es correcto      |
