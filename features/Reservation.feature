#language: pt
Funcionalidade: Reserva de passagem

Contexto: 
    Dado que eu estou logado no site

Cenario: Reservar passagem de avião
    Quando eu incluo as opcões de voo
    | passengers     | 1                   |
    | departing_from | Frankfurt           |
    | on_1           | October             |
    | on_2           | 1                   |
    | arriving_in    | London              |
    | returning_1    | December            |
    | returning_2    | 25                  |
    | airline        | Blue Skies Airlines |
    E escolho o voo
    Entao sou direcionado para a tela de finalização de compra contendo os valores "Frankfurt to London" e "London to Frankfurt"
