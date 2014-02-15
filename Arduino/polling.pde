/*
*  Name: Sensor Polling
*  Created by: Blaine Edwards
*  Created: 2/15/2014
*  Last Updated: 2/15/2014
*/

//Setup the pin
int sensorPin = A0;

void setup() {
  //Start serial
    Serial.begin(9600);
}
    
void loop() {
      
    //Check to see if Serial is available
    if(Serial.available()){
      char c = Serial.read();
                      
      //If the char is 'a' then send response
      if(c == 'a'){
        double reading = 0;
                                                  
        //Average the reading
        for(int x = 0; x < 100; x++){
          reading += analogRead(sensorPin); 
        }
        reading /= 100;
                                                                                                    
        //Send the response back
        Serial.println(reading);
      }
    }
  }
