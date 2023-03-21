# Actividad 4
Mario Cesar Moran Porras - 202010793

### Creación del script *`act4.sh`*
 - El script debe imprimir un saludo y la fecha actual por lo que debera tener el siguiente contenido:

```
    #!/bin/bash
    echo 'Hola, la fecha de hoy es '
    echo $(date +"%d/%m/%Y")
```
---
### Creación del archivo *`act4.service`*

 - Se debe crear el archivo en el siguiente directorio /lib/systemd/system/act4.service
 - El contenido del archivo deber ser el siguiente:

```
    [Unit]
    Description=Actividad 4 de Sistemas Operativos 1

    [Service]
    User=mario
    ExecStart=/home/mario/Documents/act4.sh

    [Install]
    WantedBy=multi-user.target
```

---
## Administrar el servicio creado

Para la adimintración del servicion se utiliza una serie de comandos, los cuales se presentan a continuación

1. Se debe habilitar el servicio para poder utilizarlo, esto se logra con el siguiente comando:

`sudo systemctl enable act4.service`

2. Una vez que el servicio está habilitado, se debe iniciar con el siguiente comando:

`sudo systemctl start act4.service`

3. Finalmente, para detener el servicio se debe ejecutar el siguiente comando:

`sudo systemctl stop act4.service`

###### Se recomienda configurar los permisos 777 al archivo con: `chmod act4.service`