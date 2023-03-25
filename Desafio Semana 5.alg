algoritmo "semnome"

var
temperaturaCelsius  ,conversao, temperaturaFahrenheit : vetor [1..4] de real
i, j, auxhora : inteiro
hora : vetor [1..4] de inteiro
auxtemp : real
auxconversao : real
inicio
procedimento CelsiusparaFahrenheit
inicio

para i de 1 ate 4 faca
   Escreval("Informe temperatura em Celsius")
   leia(temperaturaCelsius[i])
   conversao[i] <- (temperaturaCelsius[i]*1.8)+ 32
   limpatela
   Escreval("Informe a hora da temperatura informada anteriormente")
   leia(hora[i])
   para j de 1 ate 4 faca
      se temperaturaCelsius[j] > temperaturaCelsius[i] faca
         auxtemp <- temperaturaCelsius[i]
         auxhora <- hora[i]
         auxconversao <- conversao[i]
         temperaturaCelsius[i] <- temperaturaCelsius[j]
         hora[i] <- hora[j]
         conversao[i] <- conversao[j]
         temperaturaCelsius[j] <- auxtemp
         hora[j] <- auxhora
         conversao[j] <- auxconversao
      fimse
   fimpara
fimpara
para i de 1 ate 4 faca
 Escreval("A temperatura em Celsius é :""A temperatura em Celsius é: ",temperaturaCelsius[i],"ºC, registrada as ", hora[i], ":00 Horas, correspondem a ", conversao[i]:1:2,"F")
fimpara
fimprocedimento
fimalgoritmo
