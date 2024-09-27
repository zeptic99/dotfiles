#include <stdio.h>
#include </opt/cuda/targets/x86_64-linux/include/nvml.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    nvmlReturn_t result;
    nvmlDevice_t device;
    unsigned int temp, power;
    nvmlUtilization_t gpuUtilization;

    // Initialize NVML library
    result = nvmlInit();
    // Get the first GPU device handle (index 0)
    result = nvmlDeviceGetHandleByIndex(0, &device);
    // Get GPU temperature
    result = nvmlDeviceGetTemperature(device, NVML_TEMPERATURE_GPU, &temp);
    // Get GPU utilization
    result = nvmlDeviceGetUtilizationRates(device, &gpuUtilization);
    // Get GPU power consumption
    result = nvmlDeviceGetPowerUsage(device, &power);

    // Output in the desired format
  if (temp == 0) {
    printf("offline");
  }
  else {
    printf("  %u%%  \uf2c9  %u°C  \ue315  %uW\n", gpuUtilization.gpu, temp, power / 1000);
  }
    // Shutdown NVML
    nvmlShutdown();

    return 0;
}
