function( install_extlibs EXTLIBS_DIR INSTALL_DIR )
	if( ${CMAKE_SYSTEM_NAME} MATCHES "Windows" )
		set( BINARES
				"${EXTLIBS_DIR}/FreeImage/bin/FreeImage.dll"
				"${EXTLIBS_DIR}/freetype/bin/freetype.dll"
				"${EXTLIBS_DIR}/GLEW/bin/glew32.dll"
				"${EXTLIBS_DIR}/SDL2/bin/SDL2.dll"
				"${EXTLIBS_DIR}/OpenAL/bin/OpenAL32.dll"
				"${EXTLIBS_DIR}/steamaudio_api/bin/Windows/x86/phonon.dll"
				"${EXTLIBS_DIR}/luajit/bin/lua51.dll"
				)
	else()
		message( SEND_ERROR "Unknow platform" )
	endif()	
	
	install( FILES ${BINARES} DESTINATION ${INSTALL_DIR} )
endfunction()