---
title: "Práctica: 12-3"
author: "Agustín Alejandro Mota Hinojosa"
geometry: margin=0.5in
...

# Inténtelo/Resuélvalo {-}

1.  Respuesta: Cuando no se tiene un valor en específico y se quiere
    insertar un valor por defecto.

2.  Respuesta inciso c:

    ``` {.sql}
    insert into copy_f_promotional_menus
    (code,name,start_date,end_date,give_away)
    values
    (120,'New Customer',default,to_date('01-Jun-2005','DD-MM-YYYY'),'cupon del 10%  de descuento');
    ```

3.  Respuestas:

    -   Respuesta inciso `b`:

        ``` {.sql}
        create table manager_copy_d_cds
        as (select * from d_cds);
        ```

    -   Respuesta inciso `c`:

        ``` {.sql}
        insert into copy_d_cds
               (cd_number,title,producer,year)
        values
               (20, 'Hello World Here I Am', 'Middle Earth Records', '1998');
        ```

    -   Respuesta inciso `d`:

        ``` {.sql}
        merge into manager_copy_d_cds c using d_cds o
              on (c.cd_number = o.cd_number)
        when matched then update
             set
                c.title = o.title,
                c.year = o.year
        when not matched then insert
             values (o.cd_number,o.title,o.producer,o.year);
        ```

4.  Respuesta:

    ``` {.sql}
    insert all
        when (salary > 2000) then
        into special_sal
            values (employee_id,hire_date,salary)
        into sal_history
            values (employee_id,hire_date,salary)
        into mgr_history
             values (employee_id,manager_id,salary)
    select employee_id,hire_date,salary,manager_id
    from employees;
    ```
