#include <stdio.h>
#include </opt/cuda/targets/x86_64-linux/include/nvml.h>

int main() {
    nvmlReturn_t result;
    nvmlDevice_t device;
    unsigned int temp, utilization, power;
    nvmlUtilization_t gpuUtilization;

    // Initialize NVML library
    result = nvmlInit();
    if (NVML_SUCCESS != result) {
        printf("Failed to initialize NVML: %s\n", nvmlErrorString(result));
        return 1;
    }

    // Get the first GPU device handle (index 0)
    result = nvmlDeviceGetHandleByIndex(0, &device);
    if (NVML_SUCCESS != result) {
        printf("Failed to get handle for device 0: %s\n", nvmlErrorString(result));
        nvmlShutdown();
        return 1;
    }

    // Get GPU temperature
    result = nvmlDeviceGetTemperature(device, NVML_TEMPERATURE_GPU, &temp);
    if (NVML_SUCCESS != result) {
        printf("Failed to get GPU temperature: %s\n", nvmlErrorString(result));
    } else {
        printf("GPU Temperature: %u °C\n", temp);
    }

    // Get GPU utilization
    result = nvmlDeviceGetUtilizationRates(device, &gpuUtilization);
    if (NVML_SUCCESS != result) {
        printf("Failed to get GPU utilization: %s\n", nvmlErrorString(result));
    } else {
        printf("GPU Utilization: %u%%\n", gpuUtilization.gpu);
    }

    // Get GPU power consumption
    result = nvmlDeviceGetPowerUsage(device, &power);
    if (NVML_SUCCESS != result) {
        printf("Failed to get GPU power consumption: %s\n", nvmlErrorString(result));
    } else {
        printf("GPU Power Consumption: %.2f W\n", power / 1000.0);
    }

    // Shutdown NVML
    nvmlShutdown();

    return 0;
}

