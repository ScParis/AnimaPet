***Settings***
Documentation       Exemplos da própria Library: GetAll /veterinarios 
...                https://github.com/ScParis/AnimaPet                

Library             RequestsLibrary
Library             Collections

Resource            ../../resources/base.robot

***Test Cases***
Requisição De GET ALL

    Realizar Requisição de GET By ID         1
    Confere o status code                    200