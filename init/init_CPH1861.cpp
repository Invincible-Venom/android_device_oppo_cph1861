#include <fcntl.h>
#include <stdlib.h>
#include <sys/sysinfo.h>
#include <android-base/file.h>
#include <android-base/properties.h>
#include <android-base/strings.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"

using android::base::GetProperty;
using android::base::ReadFileToString;
using android::init::property_set;

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void device_check()
{
    std::string product;

    product = GetProperty("ro.product.device", "");

    /* CPH1859 */
    if (product == "CPH1859") {
        property_set("ro.build.fingerprint", "full_oppo6771_17061-user 8.1.0 O11019 1550589611;user/release-keys");
    }
    /* CPH1861 */
    if (product == "CPH1861") {
        property_set("ro.build.fingerprint", "full_oppo6771_17061-user 8.1.0 O11019 1550589611;user/release-keys");
    }

}

void vendor_load_properties()
{
    device_check();
}
