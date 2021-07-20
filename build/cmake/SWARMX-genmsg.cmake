# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "SWARMX: 1 messages, 1 services")

set(MSG_I_FLAGS "-ISWARMX:/home/hk/catkin_ws/src/swarmx/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(SWARMX_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/msg/activate.msg" NAME_WE)
add_custom_target(_SWARMX_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "SWARMX" "/home/hk/catkin_ws/src/swarmx/msg/activate.msg" ""
)

get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/srv/getID.srv" NAME_WE)
add_custom_target(_SWARMX_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "SWARMX" "/home/hk/catkin_ws/src/swarmx/srv/getID.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(SWARMX
  "/home/hk/catkin_ws/src/swarmx/msg/activate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/SWARMX
)

### Generating Services
_generate_srv_cpp(SWARMX
  "/home/hk/catkin_ws/src/swarmx/srv/getID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/SWARMX
)

### Generating Module File
_generate_module_cpp(SWARMX
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/SWARMX
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(SWARMX_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(SWARMX_generate_messages SWARMX_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/msg/activate.msg" NAME_WE)
add_dependencies(SWARMX_generate_messages_cpp _SWARMX_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/srv/getID.srv" NAME_WE)
add_dependencies(SWARMX_generate_messages_cpp _SWARMX_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(SWARMX_gencpp)
add_dependencies(SWARMX_gencpp SWARMX_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS SWARMX_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(SWARMX
  "/home/hk/catkin_ws/src/swarmx/msg/activate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/SWARMX
)

### Generating Services
_generate_srv_eus(SWARMX
  "/home/hk/catkin_ws/src/swarmx/srv/getID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/SWARMX
)

### Generating Module File
_generate_module_eus(SWARMX
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/SWARMX
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(SWARMX_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(SWARMX_generate_messages SWARMX_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/msg/activate.msg" NAME_WE)
add_dependencies(SWARMX_generate_messages_eus _SWARMX_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/srv/getID.srv" NAME_WE)
add_dependencies(SWARMX_generate_messages_eus _SWARMX_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(SWARMX_geneus)
add_dependencies(SWARMX_geneus SWARMX_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS SWARMX_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(SWARMX
  "/home/hk/catkin_ws/src/swarmx/msg/activate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/SWARMX
)

### Generating Services
_generate_srv_lisp(SWARMX
  "/home/hk/catkin_ws/src/swarmx/srv/getID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/SWARMX
)

### Generating Module File
_generate_module_lisp(SWARMX
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/SWARMX
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(SWARMX_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(SWARMX_generate_messages SWARMX_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/msg/activate.msg" NAME_WE)
add_dependencies(SWARMX_generate_messages_lisp _SWARMX_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/srv/getID.srv" NAME_WE)
add_dependencies(SWARMX_generate_messages_lisp _SWARMX_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(SWARMX_genlisp)
add_dependencies(SWARMX_genlisp SWARMX_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS SWARMX_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(SWARMX
  "/home/hk/catkin_ws/src/swarmx/msg/activate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/SWARMX
)

### Generating Services
_generate_srv_nodejs(SWARMX
  "/home/hk/catkin_ws/src/swarmx/srv/getID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/SWARMX
)

### Generating Module File
_generate_module_nodejs(SWARMX
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/SWARMX
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(SWARMX_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(SWARMX_generate_messages SWARMX_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/msg/activate.msg" NAME_WE)
add_dependencies(SWARMX_generate_messages_nodejs _SWARMX_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/srv/getID.srv" NAME_WE)
add_dependencies(SWARMX_generate_messages_nodejs _SWARMX_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(SWARMX_gennodejs)
add_dependencies(SWARMX_gennodejs SWARMX_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS SWARMX_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(SWARMX
  "/home/hk/catkin_ws/src/swarmx/msg/activate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/SWARMX
)

### Generating Services
_generate_srv_py(SWARMX
  "/home/hk/catkin_ws/src/swarmx/srv/getID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/SWARMX
)

### Generating Module File
_generate_module_py(SWARMX
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/SWARMX
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(SWARMX_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(SWARMX_generate_messages SWARMX_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/msg/activate.msg" NAME_WE)
add_dependencies(SWARMX_generate_messages_py _SWARMX_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hk/catkin_ws/src/swarmx/srv/getID.srv" NAME_WE)
add_dependencies(SWARMX_generate_messages_py _SWARMX_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(SWARMX_genpy)
add_dependencies(SWARMX_genpy SWARMX_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS SWARMX_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/SWARMX)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/SWARMX
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(SWARMX_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/SWARMX)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/SWARMX
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(SWARMX_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/SWARMX)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/SWARMX
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(SWARMX_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/SWARMX)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/SWARMX
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(SWARMX_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/SWARMX)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/SWARMX\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/SWARMX
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(SWARMX_generate_messages_py std_msgs_generate_messages_py)
endif()
