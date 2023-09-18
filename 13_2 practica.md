---
title: Práctica: 13-2
author: Agustín Alejandro Mota Hinojosa
geometry: margin=0.5in
...

# Terminología {-}

1. Permite almacenar el tiempo como un intervalo de años y meses

  **Respuesta**: interval year to month           

2. Cuando se selecciona una columna en una sentencia SQL, el tiempo se
    convierte automóticamente en la zona horaria del usuario

    **Respuesta**: timestamp with local time zone   
                                   
3. Datos de objeto grande binario hasta 4 GB                                  

  **Respuesta**: glob                             

4. Almacena un valor de zona horaria como un desplazamiento respecto a la
    Hora Universal Coordinada o UCT

  **Respuesta**: timestamp with time zone         
                                   
5. Permite almacenar el tiempo como un intervalo de días en horas, minutos
    y segundos

  **Respuesta** interval day to second           
                                   
6. Datos de caracteres hasta 4 GB
  **Respuesta**: clob                             

7. Permite almacenar el tiempo como una fecha con segundos
    fraccionarios

  **Respuesta**: timestamp
                                   

# Inténtelo/Resuélvalo {-}

1.  Utilizando los ejemplos que se proporcionan en las diapositivas,
    cree cada una de las tres tablas de zona horaria. a. TIMESTAMP WITH
    LOCAL TIME ZONE

    ``` {.sql}
    create table ejemplo1
    (local_timezone timestamp with local time zone);
    ```

    b\. INTERVAL YEAR TO MONTH

    ``` {.sql}
    create ejemplo2
    (int_year2month interval year(3) to month);
    ```

    c\. INTERVAL DAY TO SECOND

    ``` {.sql}
    create ejemplo3
    (int_day2sec interval day(2) to second)
    ```

2.  Ejecute SELECT\* de cada tabla para verificar las entradas.

    ``` {.sql}
    select * from ejemplo1;
    select * from ejemplo2;
    select * from ejemplo3;
    ```

3.  Proporcione 3 ejemplos de organizaciones y situaciones personales en
    las que es importante conocer a qué zona horaria se refiere un valor
    de fecha y hora.

    1.  Registrar horas para la emisión de un directo en diferentes
        zonas del mundo.
    2.  Registro de importaciones de productos.
    3.  Registro de fechas de salida y entrada de productos en una
        aduana.
