***Settings***
Documentation       Exemplos da própria Library: GetAll /veterinarios 
...                https://github.com/ScParis/AnimaPet                

Library             RequestsLibrary
Library             Collections

Resource            ../../resources/base.robot

***Test Cases***
Requisição De POST

    Creating json File
    Realizar Requisição de DELETE By ID            5
    Post Vet