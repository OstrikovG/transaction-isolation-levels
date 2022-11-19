# transaction-isolation-levels

## Description
https://habr.com/ru/post/469415/
Each characteristic value sets the transaction isolation level. The isolation level is used for operations on InnoDB tables.

## Usage

1. Build project containers with
    ```bash
    $ make up
    ```

2. Open two different terminal windows and run db container with mysql in both
    ```bash
    $ make mysql
    ```

3. Execute  step1 sql command from 1.sql and then 2.sql. Make the same with step2

