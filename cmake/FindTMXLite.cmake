# 	---------------------------------
#	[in] 	TMXLITE_PATH		- root dir TMXLite
#	[out] 	TMXLITE_INCLUDE		- dir with includes
#	[out]	TMXLITE_LIB			- lib TMXLite
#	[out]	TMXLITE_DEBUG_LIB	- lib TMXLite debug
#	[out]	TMXLITE_FOUND		- is found TMXLite
# 	---------------------------------

SET( TMXLITE_SEARCH_PATHS
	~/Library/Frameworks
	/Library/Frameworks
	/usr/local
	/usr
	/sw # Fink
	/opt/local # DarwinPorts
	/opt/csw # Blastwave
	/opt
	${TMXLITE_PATH}
)

find_path( 		TMXLITE_INCLUDE
				NAMES "tmxlite/Map.hpp"
				PATH_SUFFIXES include
				PATHS ${TMXLITE_SEARCH_PATHS} )	
				
find_library( 	TMXLITE_LIB 
                NAMES tmxlite-s
                PATH_SUFFIXES lib/${ARCH_TYPE} lib lib32 lib64 lib/x86_64-linux-gnu
                PATHS ${TMXLITE_SEARCH_PATHS} )

find_library( 	TMXLITE_DEBUG_LIB 
                NAMES tmxlite-s-d
                PATH_SUFFIXES lib/${ARCH_TYPE} lib lib32 lib64 lib/x86_64-linux-gnu
                PATHS ${TMXLITE_SEARCH_PATHS} )
		
if ( TMXLITE_INCLUDE AND TMXLITE_LIB AND TMXLITE_DEBUG_LIB )
	set( TMXLITE_FOUND true )
endif()
