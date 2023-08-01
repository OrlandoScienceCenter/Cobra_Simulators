// Original Code and library by:
// Matthew Heironimus
// 2016-05-29 - Original Version
//
// Modified by David Sikes 2023-03-07
//
//------------------------------------------------------------

// UPLOAD NOTES:
// Select board as Leonardo even though it's a pro micro

// Wiring info middle flight sim:

// Joystick ------------- Arduino Pin

// Blue (Y) ------------- A1
// Purple (X) ----------- A0 (Brown)
// Button --------------- D6

#include "Joystick.h"

Joystick_ Joystick(JOYSTICK_DEFAULT_REPORT_ID, 
  JOYSTICK_TYPE_MULTI_AXIS, 32, 0,
  true, true, false, false, false, false,
  true, true, false, false, false);

const bool testAutoSendMode = false;

const int PIN_THROTTLE_POTENTIOMETER = A2;

void setup() {

  Serial.begin(115200);

  Joystick.setXAxisRange(0, 1024);
  Joystick.setYAxisRange(0, 1024);
  
  Joystick.setThrottleRange(0, 255);
  
  if (testAutoSendMode)
  {
    Joystick.begin();
  }
  else
  {
    Joystick.begin(false);
  }
  
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(6, INPUT_PULLUP);
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop()
{
  // Turn indicator light on.
  digitalWrite(LED_BUILTIN, 1);
  
  checkAndSendResetButton(6);

  checkAndSendXYAxis(A0, A1);

  checkAndSendThrottle(PIN_THROTTLE_POTENTIOMETER);
    
  if (testAutoSendMode == false)
  {
    Joystick.sendState();
  }
}

void checkAndSendResetButton(int buttonPin)
{
  if (!digitalRead(buttonPin))
  {
    Joystick.pressButton(0);

    Serial.println(F("Button pressed!"));
  }
  else
  {
    Joystick.releaseButton(0);
  }
}

void checkAndSendXYAxis(int pinXAxis, int pinYAxis)
{
  int xAxisRawRead = analogRead(pinXAxis); 
  int yAxisRawRead = analogRead(pinYAxis); 

  Serial.print(F("x Axis Raw: "));
  Serial.println(xAxisRawRead);

  Serial.print(F("y Axis Raw: "));
  Serial.println(yAxisRawRead);

  Joystick.setXAxis(xAxisRawRead);  
  Joystick.setYAxis(yAxisRawRead);
}

void testThrottleRudder(unsigned int value)
{
  Joystick.setRudder(255 - value);
}

void checkAndSendThrottle(int throttlePin)
{
  int throttleRawValue = analogRead(throttlePin);

  int throttleValueMapped = map(throttleRawValue, 270, 910, 0, 254);

  Joystick.setThrottle(throttleValueMapped);

  Serial.print("Throttle value map'd: ");
  Serial.println(throttleValueMapped);

  delay(200);
}
