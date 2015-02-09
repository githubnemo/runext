# Set the LD_LIBRARY_PATH to include the nvidia libGL.
#
# NVIDIA_ARCH controls register size. NVIDIA_ARCH=32 for 32 bit
# libraries, every other value (including none) for 64 bit libraries.

NVIDIA_VERSION=${NVIDIA_VERSION:-346}
NVIDIA_PATH=""

if [ "$NVIDIA_ARCH" = "32" ]; then
	NVIDIA_PATH="/usr/lib32/nvidia-${NVIDIA_VERSION}:/usr/lib/i386-linux-gnu/primus"
else
	NVIDIA_PATH="/usr/lib/nvidia-${NVIDIA_VERSION}:/usr/lib/x86_64-linux-gnu/primus"
fi

export LD_LIBRARY_PATH="${NVIDIA_PATH}:${LD_LIBRARY_PATH}"
