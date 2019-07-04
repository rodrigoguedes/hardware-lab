/*

Por: Rodrigo Guedes de Souza
Data: 03/09/2011 19:08

Exemplo de como controlar um servo motor
apartir de um potenciometro

*/

#include <Servo.h> //importa da lib de servo motores

Servo myservo;     //Cria uma referencia ao servo motor

int analogPin = 3; //pino ligado ao potenciomentro
int armValue = 20;

void setVelocidade(int valor){
  int velocidade = map(valor, 0, 1023, armValue, 180); //Scale input to use it with the servo ie from the arming value to 180.
  Serial.println(velocidade);
  myservo.write(velocidade);                           //Send servo position - Motor speed to ESC.
  delay(10);
}

void setup(){
  Serial.begin(9600);
  myservo.attach(9); //Indica em qual porta digital o servo esta conectado
  delay(1000);       //aguarda 1 segundo para inicialização do motor
  setVelocidade(0);  //inicia o servo motor
}

void loop(){
  int angulo = analogRead(analogPin);//captura o angulo do potenciometro
  //Serial.println(angulo);
  setVelocidade(angulo);
} 
