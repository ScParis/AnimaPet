***Settings***
Documentation       Exemplos da própria Library: GetAll /veterinarios 
...                https://github.com/ScParis/AnimaPet                

Library             RequestsLibrary
Library             Collections

Resource            ../../resources/base.robot

***Test Cases***
Requisição De DELETE

    Conectar A API Do Projeto
    Realizar Requisição de DELETE By ID      6
    Confere o status code                    204