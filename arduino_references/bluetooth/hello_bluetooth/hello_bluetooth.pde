/*
Por: Rodrigo Guedes de Souza
Data: 03/09/2011 18:41
*/
void setup() {
  Serial.begin (9600); //configura a velocidade de comunicacao
}
void loop() {  
  Serial.println("Hello world!!!!"); 
  delay(1000);//aguarda 1 segundo para proxima mensagem
}
