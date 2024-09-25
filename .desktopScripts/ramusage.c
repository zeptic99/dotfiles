#include <stdio.h>
#include <sys/sysinfo.h>

void print_ram_usage() {
    struct sysinfo info;
    
    // Get system information
    if (sysinfo(&info) != 0) {
        perror("sysinfo");
        return;
    }

    // Calculate total and used RAM in GB
    long total_ram = info.totalram / (1024 * 1024 * 1024); // Convert to GB
    long used_ram = (info.totalram - info.freeram) / (1024 * 1024 * 1024); // Convert to GB

    // Print RAM usage in "used/totalG" format
    printf("%ld/%ldG\n", used_ram, total_ram);
}

int main() {
    print_ram_usage();
    return 0;
}
