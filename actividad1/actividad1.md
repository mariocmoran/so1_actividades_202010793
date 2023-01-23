# Actividad 1
### Tipos de Kernel
Existen diferentes tipos de kernel para diferentes sistemas operativos y dispositivos finales. Conforme a sus características, pueden dividirse en tres grupos:
1. **Kernel Monolítico**: se caracteríza por tener un único nucleo para todas las tareas del sistema. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware.\
Es de tipo no modular y puede alcanzar un mayor rendimiento que un microkernel. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows (Antiguos). \
El núcleo de Linux es monolítico, por lo que los programas tienen mayor acceso al hardware y mantienen mejor comunicación entre sí, pero tiene dificultades a nivel de seguridad.

2. **Microkernel**: Se basa en ofrecer las funciones básicas de cada dispositivo, administrando aquello que tenga CPU, memoria e IPC. Esto supone un mayor control de dispositivos.\
Son más compactos que otro tipo de núcleos, por lo que brindan un conjunto reducido de abstracciones básicas del hardware, lo cual brinda beneficios en cuanto a portabilidad, seguridad y su capacidad para adaptarse.\
No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.

3. **Kernel híbrido**: La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable.
---
### User vs Kernel Mode
**User Mode**: cuando un programa se inicia en un sistema operativo, digamos Windows, luego inicia el programa en User Mode. Y cuando un programa en User Mode solicita ejecutarse, Windows crea un proceso y un espacio de direcciones virtuales (espacio de direcciones para ese proceso). Los programas de User Mode tienen menos privilegios que las aplicaciones de User Mode y no se les permite acceder a los recursos del sistema directamente. Por ejemplo, si una aplicación en User Mode desea acceder a los recursos del sistema, primero deberá pasar por el kernel del sistema operativo mediante llamadas al sistema.

**Kernel Mode**: El kernel es el programa central en el que se basan todos los demás componentes del sistema operativo, se utiliza para acceder a los componentes de hardware y programar qué procesos deben ejecutarse en un sistema informático y cuándo, y también administra la interacción entre el software y el hardware de la aplicación. . Por lo tanto, es el programa más privilegiado, a diferencia de otros programas, puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en User Mode necesitan acceso al hardware, por ejemplo, una cámara web, primero tiene que pasar por el núcleo mediante una llamada al sistema y, para llevar a cabo estas solicitudes, la CPU cambia del User Mode al Kernel Mode en el momento de la ejecución. Después de completar finalmente la ejecución del proceso, la CPU vuelve a cambiar al User Mode.

### Diferencias entre User Mode y Kernel Mode
 - En Kernel Mode, el programa tiene acceso directo y sin restricciones a los recursos del sistema.
 - En User Mode, un solo proceso falla si ocurre una interrupción.
 - En Kernel Mode, todo el sistema operativo puede dejar de funcionar si se produce una interrupción
 - Como el Kernel Mode puede acceder tanto a los programas del usuario como a los programas del kernel, no hay restricciones. Mientras que el User Mode necesita acceder a los programas del kernel, ya que no puede acceder a ellos directamente.
 - Un bloqueo del sistema en Kernel Mode es grave y complica las cosas. En el User Mode, se puede recuperar un bloqueo del sistema simplemente reanudando la sesión.