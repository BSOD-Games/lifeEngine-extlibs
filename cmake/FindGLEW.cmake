# 	---------------------------------
#	[in] 	GLEW_PATH			- root dir glew
#	[out] 	GLEW_INCLUDE		- dir with includes
#	[out]	GLEW_LIB			- lib glew
#	[out]	GLEW_FOUND			- is found glew
# 	---------------------------------

SET( GLEW_SEARCH_PATHS
	~/Library/Frameworks
	/Library/Frameworks
	/usr/local
    /usr
	/sw # Fink
	/opt/local # DarwinPorts
	/opt/csw # Blastwave
	/opt
	${GLEW_PATH}
)

find_path( 		GLEW_INCLUDE
				NAMES "GL/glew.h"
				PATH_SUFFIXES include
				PATHS ${GLEW_SEARCH_PATHS} )
				
find_library( 	GLEW_LIB 
                NAMES glew32s
                PATH_SUFFIXES lib/${ARCH_TYPE} lib lib32 lib64 lib/x86_64-linux-gnu
                PATHS ${GLEW_SEARCH_PATHS} )

if ( GLEW_INCLUDE AND GLEW_LIB )
	set( GLEW_FOUND true )	
endif()
