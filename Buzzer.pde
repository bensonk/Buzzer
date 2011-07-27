// The speaker is on pin 9
int speaker = 9;

void setup() {
  pinMode(speaker, OUTPUT);
  Serial.begin(9600);
}

void buzz(long tone, long duration) {
  long time_left = duration * 1000;
  long sleep_time = 1000000/tone;

  Serial.print("Time left: ");
  Serial.println(time_left);

  while(time_left > 0) {
    digitalWrite(speaker, HIGH);
    delayMicroseconds(sleep_time/2);
    digitalWrite(speaker, LOW);
    delayMicroseconds(sleep_time/2);
    time_left -= sleep_time;
  }
}

void loop() {
  int scale[] = {261, 294, 329, 349, 392, 440, 493, 523};
  buzz(3600, 300);
  buzz(3300, 300);

  //delay(10*1000);
}
