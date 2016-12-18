
find_path(PULSEAUDIO_INCLUDE_DIR pulse/simple.h)

set(PULSEAUDIO_INCLUDE_DIRS ${PULSEAUDIO_INCLUDE_DIR})

find_library(PULSEAUDIO_LIBRARY pulse-simple)
if (PULSEAUDIO_LIBRARY)
	set(PULSEAUDIO_LIBRARIES ${PULSEAUDIO_LIBRARY})
endif (PULSEAUDIO_LIBRARY)

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(PULSEAUDIO DEFAULT_MSG PULSEAUDIO_INCLUDE_DIRS PULSEAUDIO_LIBRARIES)
