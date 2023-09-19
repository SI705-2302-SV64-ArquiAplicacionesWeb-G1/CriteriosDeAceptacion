Feature: Realización de Pago

  Como usuario de WeRecycle,
  Quiero poder realizar un pago en línea para comprar productos o servicios en la aplicación.

  Scenario: Usuario ingresa bien sus datos para el pago y realiza el pago con éxito
    Given que estoy logueado en mi cuenta de usuario
    And tengo productos o servicios en mi carrito de compras
    When voy al carrito de compras y selecciono la opción para proceder al pago
    And ingreso los detalles de mi tarjeta de crédito válidos, como número de tarjeta, fecha de vencimiento y código CVV
    And confirmo el pago
    Then debería ver un mensaje de confirmación que indica que el pago se ha realizado con éxito
    And mi compra debería quedar registrada en mi historial de compras

    Examples:
      | Número de Tarjeta | Fecha de Vencimiento | Código CVV | Mensaje de Confirmación                        |
      | 1234 5678 9012 3456| 12/25              | 123        | El pago se ha realizado con éxito               |
      | 9876 5432 1098 7654| 09/24              | 456        | El pago se ha realizado con éxito               |

  Scenario: Usuario ingresa mal sus datos de pago
    Given que estoy logueado en mi cuenta de usuario
    And tengo productos o servicios en mi carrito de compras
    When voy al carrito de compras y selecciono la opción para proceder al pago
    And ingreso detalles de tarjeta de crédito incorrectos, como un número de tarjeta inválido o una fecha de vencimiento pasada
    And confirmo el pago
    Then debería ver un mensaje de error que indica que los detalles de pago son incorrectos
    And no se debería realizar ningún cargo en mi tarjeta

    Examples:
      | Número de Tarjeta | Fecha de Vencimiento | Código CVV | Mensaje de Error                       |
      | 0000 1111 2222 3333| 12/22              | 999        | Los detalles de pago son incorrectos   |
      | 4444 5555 6666 7777| 05/21              | 888        | Los detalles de pago son incorrectos   |

  Scenario: Usuario ingresa bien sus datos de pago, pero no tiene suficiente dinero en su tarjeta
    Given que estoy logueado en mi cuenta de usuario
    And tengo productos o servicios en mi carrito de compras
    When voy al carrito de compras y selecciono la opción para proceder al pago
    And ingreso detalles de tarjeta de crédito válidos
    And confirmo el pago
    Then debería ver un mensaje de error que indica que no tengo suficiente saldo en mi tarjeta para completar la transacción
    And no se debería realizar ningún cargo en mi tarjeta

    Examples:
      | Número de Tarjeta | Fecha de Vencimiento | Código CVV | Mensaje de Error                               |
      | 1111 2222 3333 4444| 03/23              | 777        | No tienes suficiente saldo en tu tarjeta       |
      | 5555 6666 7777 8888| 06/25              | 555        | No tienes suficiente saldo en tu tarjeta       |
