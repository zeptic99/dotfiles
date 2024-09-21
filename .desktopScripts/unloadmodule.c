#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>
#include <stdio.h>
#include <errno.h>

int unload_module(const char *module_name, int flags) {
    // Use the syscall to remove a kernel module
    int result = syscall(SYS_delete_module, module_name, flags);
    
    if (result != 0) {
        perror("Error unloading module");
        return errno;
    }
    
    printf("Module '%s' unloaded successfully.\n", module_name);
    return 0;
}

int main() {
    const char *module_name = "nvidia_drm";  // Replace with the actual module name
    int flags = 0;  // Flags like O_NONBLOCK or O_TRUNC could be used if needed

    // Attempt to unload the kernel module
    return unload_module(module_name, flags);
}
