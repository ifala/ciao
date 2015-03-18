/*
  Button

 Turns on and off a light emitting diode(LED) connected to digital
 pin 13, when pressing a pushbutton attached to pin 2.


 The circuit:
 * LED attached from pin 13 to ground
 * pushbutton attached to pin 2 from +5V
 * 10K resistor attached to pin 2 from ground

 * Note: on most Arduinos there is already an LED on the board
 attached to pin 13.


 created 2005
 by DojoDave <http://www.0j0.org>
 modified 30 Aug 2011
 by Tom Igoe

 This example code is in the public domain.

 http://www.arduino.cc/en/Tutorial/Button
 */

// constants won't change. They're used here to
// set pin numbers:
const int buttonPin = 7;     // the number of the pushbutton pin
const int ledPin =  8;      // the number of the LED pin
int brightness1 = 1;    // how bright the LED is
int fadeAmount1 = 2;    // how many points to fade the LED by
int brightness = 0;    // how bright the LED is
int fadeAmount = 5;    // how many points to fade the LED by

// variables will change:
int buttonState = 0;         // variable for reading the pushbutton status

void setup() {
  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);
}

void loop() {
  // read the state of the pushbutton value:
  buttonState = analogRead(buttonPin);
  // check if the pushbutton is pressed.
  // if it is, the buttonState is HIGH:
  if (buttonState == LOW) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    analogWrite(ledPin, brightness);
    brightness = brightness + fadeAmount;
    if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ;
  }
  // wait for 30 milliseconds to see the dimming effect
  delay(1);
  }
  else {
    // turn LED off:
   digitalWrite(ledPin, HIGH);
    analogWrite(ledPin, brightness1);
    brightness1 = brightness1 + fadeAmount1;
    if (brightness1 == 0 || brightness1 == 255) {
    fadeAmount1 = -fadeAmount1 ;
  }
}
}
