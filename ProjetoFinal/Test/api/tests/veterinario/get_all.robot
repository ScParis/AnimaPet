***Settings***
Documentation       Exemplos da própria Library: GetAll /veterinarios 
...                https://github.com/ScParis/AnimaPet                

Library             RequestsLibrary
Library             Collections

Resource            ../../resources/base.robot

***Test Cases***
Requisição De GET ALL

    Conectar A API Do Projeto
    Realizar Requisição de GET ALL
    Confere o status code            200