# Aster x306p_48t

# Vendor's version number can be defined here.
# Available variable is 'VENDOR_VERSION'.
# e.g.,
# VENDOR_VERSION = .00.01


ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = cavium

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers

# Accton Technology Corporation IANA number
VENDOR_ID = 259

I2CTOOLS_ENABLE = yes
I2CTOOLS_SYSEEPROM = no

# Console parameters
CONSOLE_DEV = 1

# Set Linux kernel version
LINUX_VERSION = 4.9
LINUX_MINOR_VERSION = 95

GCC_VERSION = 4.9.2

FIRMWARE_UPDATE_ENABLE = no
CONSOLE_SPEED = 115200
SERIAL_CONSOLE_ENABLE = yes
# EXTRA_CMDLINE_LINUX = none
RECOVERY_DEFAULT_ENTRY = rescue
SKIP_ETHMGMT_MACS = no
VENDOR_VERSION = empty


MTDUTILS_ENABLE = yes
GPT_ENABLE = yes
LVM2_ENABLE = yes
PARTED_ENABLE = yes
GRUB_ENABLE = yes
UEFI_ENABLE = yes
DMIDECODE_ENABLE = yes
ETHTOOL_ENABLE = yes
ACPI_ENABLE = yes
KEXEC_ENABLE = yes
FLASHROM_ENABLE = yes
IPMITOOL_ENABLE = no

SECURE_BOOT_ENABLE = no

#------------------------------------------------------------------------------- 
#
# Local Variables:
# mode: makefile-gmake
# End:
