HEADERS += $$PWD/angelscript/include/angelscript.h \
           $$PWD/angelscript/source/as_array.h \
           $$PWD/angelscript/source/as_atomic.h \
           $$PWD/angelscript/source/as_builder.h \
           $$PWD/angelscript/source/as_bytecode.h \
           $$PWD/angelscript/source/as_callfunc.h \
           $$PWD/angelscript/source/as_compiler.h \
           $$PWD/angelscript/source/as_config.h \
           $$PWD/angelscript/source/as_configgroup.h \
           $$PWD/angelscript/source/as_context.h \
           $$PWD/angelscript/source/as_criticalsection.h \
           $$PWD/angelscript/source/as_datatype.h \
           $$PWD/angelscript/source/as_debug.h \
           $$PWD/angelscript/source/as_gc.h \
           $$PWD/angelscript/source/as_generic.h \
           $$PWD/angelscript/source/as_map.h \
           $$PWD/angelscript/source/as_memory.h \
           $$PWD/angelscript/source/as_module.h \
           $$PWD/angelscript/source/as_objecttype.h \
           $$PWD/angelscript/source/as_outputbuffer.h \
           $$PWD/angelscript/source/as_parser.h \
           $$PWD/angelscript/source/as_property.h \
           $$PWD/angelscript/source/as_restore.h \
           $$PWD/angelscript/source/as_scriptcode.h \
           $$PWD/angelscript/source/as_scriptengine.h \
           $$PWD/angelscript/source/as_scriptfunction.h \
           $$PWD/angelscript/source/as_scriptnode.h \
           $$PWD/angelscript/source/as_scriptobject.h \
           $$PWD/angelscript/source/as_string.h \
           $$PWD/angelscript/source/as_string_util.h \
           $$PWD/angelscript/source/as_symboltable.h \
           $$PWD/angelscript/source/as_texts.h \
           $$PWD/angelscript/source/as_thread.h \
           $$PWD/angelscript/source/as_tokendef.h \
           $$PWD/angelscript/source/as_tokenizer.h \
           $$PWD/angelscript/source/as_typeinfo.h \
           $$PWD/angelscript/source/as_variablescope.h

SOURCES += $$PWD/angelscript/source/as_atomic.cpp \
           $$PWD/angelscript/source/as_builder.cpp \
           $$PWD/angelscript/source/as_bytecode.cpp \
           $$PWD/angelscript/source/as_callfunc.cpp \
           $$PWD/angelscript/source/as_callfunc_mips.cpp \
           $$PWD/angelscript/source/as_callfunc_ppc.cpp \
           $$PWD/angelscript/source/as_callfunc_ppc_64.cpp \
           $$PWD/angelscript/source/as_callfunc_sh4.cpp \
           $$PWD/angelscript/source/as_callfunc_x64_gcc.cpp \
           $$PWD/angelscript/source/as_callfunc_x64_mingw.cpp \
           $$PWD/angelscript/source/as_callfunc_x64_msvc.cpp \
           $$PWD/angelscript/source/as_callfunc_x86.cpp \
           $$PWD/angelscript/source/as_callfunc_xenon.cpp \
           $$PWD/angelscript/source/as_compiler.cpp \
           $$PWD/angelscript/source/as_configgroup.cpp \
           $$PWD/angelscript/source/as_context.cpp \
           $$PWD/angelscript/source/as_datatype.cpp \
           $$PWD/angelscript/source/as_gc.cpp \
           $$PWD/angelscript/source/as_generic.cpp \
           $$PWD/angelscript/source/as_globalproperty.cpp \
           $$PWD/angelscript/source/as_memory.cpp \
           $$PWD/angelscript/source/as_module.cpp \
           $$PWD/angelscript/source/as_objecttype.cpp \
           $$PWD/angelscript/source/as_outputbuffer.cpp \
           $$PWD/angelscript/source/as_parser.cpp \
           $$PWD/angelscript/source/as_restore.cpp \
           $$PWD/angelscript/source/as_scriptcode.cpp \
           $$PWD/angelscript/source/as_scriptengine.cpp \
           $$PWD/angelscript/source/as_scriptfunction.cpp \
           $$PWD/angelscript/source/as_scriptnode.cpp \
           $$PWD/angelscript/source/as_scriptobject.cpp \
           $$PWD/angelscript/source/as_string.cpp \
           $$PWD/angelscript/source/as_string_util.cpp \
           $$PWD/angelscript/source/as_thread.cpp \
           $$PWD/angelscript/source/as_tokenizer.cpp \
           $$PWD/angelscript/source/as_typeinfo.cpp \
           $$PWD/angelscript/source/as_variablescope.cpp

HEADERS += $$PWD/add_on/scriptany/scriptany.h \
           $$PWD/add_on/scriptarray/scriptarray.h \
           $$PWD/add_on/scriptdictionary/scriptdictionary.h \
           $$PWD/add_on/scriptmath/scriptmath.h \
           $$PWD/add_on/scripthandle/scripthandle.h \
           $$PWD/add_on/scriptstdstring/scriptstdstring.h \
           $$PWD/add_on/scriptbuilder/scriptbuilder.h

SOURCES += $$PWD/add_on/scriptany/scriptany.cpp \
           $$PWD/add_on/scriptarray/scriptarray.cpp \
           $$PWD/add_on/scriptdictionary/scriptdictionary.cpp \
           $$PWD/add_on/scriptmath/scriptmath.cpp \
           $$PWD/add_on/scripthandle/scripthandle.cpp \
           $$PWD/add_on/scriptstdstring/scriptstdstring.cpp \
           $$PWD/add_on/scriptstdstring/scriptstdstring_utils.cpp \
           $$PWD/add_on/scriptbuilder/scriptbuilder.cpp

!win32-g++:win32:contains(QMAKE_HOST.arch, x86_64):{
    asm_compiler.commands = ml64 /c
    asm_compiler.commands +=  /Fo ${QMAKE_FILE_OUT} ${QMAKE_FILE_IN}
    asm_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
    asm_compiler.input = ASM_SOURCES
    asm_compiler.variable_out = OBJECTS
    asm_compiler.name = compiling[asm] ${QMAKE_FILE_IN}
    silent:asm_compiler.commands = @echo compiling[asm] ${QMAKE_FILE_IN} && $$asm_compiler.commands
    QMAKE_EXTRA_COMPILERS += asm_compiler

    ASM_SOURCES += \
        $$PWD/angelscript/source/as_callfunc_x64_msvc_asm.asm
		
    if(win32-msvc2008|win32-msvc2010|win32-msvc2012|win32-msvc2013):equals(TEMPLATE_PREFIX, "vc") {
        SOURCES += \
            $$PWD/angelscript/source/as_callfunc_x64_msvc_asm.asm
    }
}

# QMAKE_CXXFLAGS_RELEASE += /MP

