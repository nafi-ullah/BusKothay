#include <SoftwareSerial.h>

// The serial connection to the GPS module
SoftwareSerial ss(4, 5); // d1, d2

void setup(){
  Serial.begin(9600);
  ss.begin(9600);
}

void loop(){
  Serial.println(ss.available());
  while (ss.available() > 0){
    // get the byte data from the GPS
    byte gpsData = ss.read();
    Serial.write(gpsData);
    //Serial.println("HELLO");
    //Serial.println("HELLO");
    //Serial.println("HELLO");
  }
}
