# 	---------------------------------
#	[in] 	STB_PATH		- root dir STB
#	[out] 	STB_INCLUDE		- dir with includes
#	[out]	STB_FOUND		- is found STB
# 	---------------------------------

SET( STB_SEARCH_PATHS
	~/Library/Frameworks
	/Library/Frameworks
	/usr/local
	/usr
	/sw # Fink
	/opt/local # DarwinPorts
	/opt/csw # Blastwave
	/opt
	${STB_PATH}
)

find_path( 		STB_INCLUDE
				NAMES "stb_image.h" "stb_image_write.h"
				PATH_SUFFIXES include
				PATHS ${STB_SEARCH_PATHS} )
		
if ( STB_INCLUDE )
	set( STB_FOUND true )
endif()
