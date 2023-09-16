---
title: "Práctica: 12-1"
author: "Agustín Alejandro Mota Hinojosa"
geometry: margin=0.5in
...

# Terminología: {-}

1.  Persona que realiza un \"trabajo real\" con la computadora,
    utilizándola como un medio más que como un fin: Usuario
2.  Consta de una recopilación de sentencias DML que forman una unidad
    lógica de trabajo: Transacción
3.  Expresado de forma plena y clara; sin dejar nada implícito:
    Explícito
4.  Agrega una nueva fila a la tabla: `insert`

# Inténtalo/Resuélvelo {-}

1.  Proporcione dos ejemplos de por qué es importante poder modificar
    los datos de una base de datos.

    1.  Capacidad para corregir errores de entrada de datos o
        información incorrecta.
    2.  Actualizar datos que han cambiado

2.  DJs on Demand acaba de comprar cuatro nuevos CD. Utilice una
    sentencia INSERT explícita para agregar cada CD a la tabla
    `copy_d_cds`. Después de completar las entradas, ejecute una
    sentencia SELECT\* para verificar su trabajo.

    ``` {.sql}
    create table copy_d_cds as
        select * from d_cds;

    insert into copy_d_cds
        (cd_number, title, producer, year)
    values
        (97, 'Celebrate the Day', 'R & B Inc.', '2003');

    insert into copy_d_cds
        (cd_number, title, producer, year)
    values
        (99, 'Holiday Tunes for All Ages', 'Tunes are Us', '2004');

    insert into copy_d_cds
        (cd_number, title, producer, year)
    values
        (100, 'Party Music', 'Old Town Records', '2004');

    insert into copy_d_cds
        (cd_number, title, producer, year)
    values
        (101, 'Best of Rock and Roll', 'Old Town Records', '2004');
    ```

3.  DJs on Demand tiene dos nuevos eventos próximamente. Un evento es
    una fiesta de fútbol americano de otoño y el otro es una fiesta con
    temática de los años sesenta. Los clientes de DJs On Demand
    solicitan que las canciones se muestren en la tabla de sus eventos.
    Agregue estas canciones a la tabla `copy_d_songs` mediante una
    sentencia INSERT implícita.

    ``` {.sql}
    create table copy_d_songs
    as select * from d_songs;

    insert into copy_d_songs
    values
        (52,'Surfing Summer', null, null, 12);
    insert into
        copy_d_songs
    values
        (53,'Victory Victory', '5 min', null, 12);
    ```

4.  Agregue los dos nuevos clientes a la tabla `copy_d_clients`. Utilice
    un INSERT implícito o explícito.

    ``` {.sql}
    create table copy_d_clients
    as select * from d_clients;

    insert into copy_d_clients
    values
        (6655,'Ayako','Dahish','3608859030','dahisha@harbor.net');

    insert into copy_d_clients
    values
        (6689,'Nick','Neuville','9048953049','nnicky@charter.net');
    ```

5.  Agregue los nuevos eventos del cliente a la tabla `copy_d_events`.
    El costo de cada evento no se ha determinado hasta la fecha.

    ``` {.sql}
    create table copy_d_events
    as select * from d_events;

    insert into copy_d_events
        (id,name,event_date,description,
        cost,venue_id,package_code,theme_code,
        client_number)
    values
        (110,'Ayako Anniversary',to_date('07-Jul-2004','DD-MON-YYYY'),
           'Part for 50 sixties dress, decorations',-1,245,79,240,6655);

    insert into copy_d_events
        (id,name,event_date,description,
        cost,venue_id,package_code,theme_code,
        client_number)
    values
        (115,'Neuville Sports Banquet',to_date('09-Sep-2004','DD-MON-YYYY'),
        'Barbecue at residence college alumni 100 people',-1,
        315,87,340,6689)
    ```

6.  Cree una tabla llamada `rep_email` mediante la siguiente sentencia:

    ``` {.sql}
    CREATE TABLE rep_email (
    id NUMBER(6,0) CONSTRAINT rel_id_pk PRIMARY KEY,
    first_name VARCHAR2(10),
    last_name VARCHAR2(10),
    email_address VARCHAR2(10))
    ```

    Rellene esta tabla mediante la ejecución de una consulta en la tabla
    employees que solo incluya a los empleados que son REP.

    ``` {.sql}
    insert into rep_email
        (id,fisrt_name,last_name,email_address)
    select
        employee_id,first_name,last_name,email
    from employees
    where job_id like '%REP'
    ```
