#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
  unsigned int power1, power, temp, speed;

  FILE *tempf;
  FILE *powerf;
  FILE *speedf;

  char tempfp[100];
  char powerfp[100];
  char speedfp[100];

  char DRM[]="/sys/class/drm/card0";
  char HWMON[]="/sys/class/hwmon/hwmon5";

  //POWER
  sprintf(powerfp, "%s/energy1_input", HWMON);  

  powerf = fopen(powerfp, "r");
  fscanf(powerf, "%u", &power);
  usleep(250000);
  powerf = fopen(powerfp, "r");
  fscanf(powerf, "%u", &power1);

  //TEMP
  sprintf(tempfp, "%s/temp1_input", HWMON);  

  tempf = fopen(tempfp, "r");
  fscanf(tempf, "%u", &temp);

  //SPEED
  sprintf(speedfp, "%s/gt/gt0/rps_act_freq_mhz", DRM);  

  speedf = fopen(speedfp, "r");
  fscanf(speedf, "%u", &speed);

  //UNIT CONVERSION
  power = (power1 - power) / 252525; 
  double fspeed = (double)speed / 1000;
  temp = temp / 1000;

  printf("  %.2fGHz  \uf2c9  %u°C  \ue315  %uW\n", fspeed, temp, power);

  return EXIT_SUCCESS;
}
