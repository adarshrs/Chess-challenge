# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "chess: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ichess:/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(chess_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg" NAME_WE)
add_custom_target(_chess_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chess" "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg" ""
)

get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg" NAME_WE)
add_custom_target(_chess_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chess" "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg" "chess/Chesspiece:chess/Player"
)

get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg" NAME_WE)
add_custom_target(_chess_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chess" "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg" "chess/Chesspiece:chess/Player"
)

get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg" NAME_WE)
add_custom_target(_chess_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chess" "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg" "chess/Player"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chess
)
_generate_msg_cpp(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chess
)
_generate_msg_cpp(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chess
)
_generate_msg_cpp(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chess
)

### Generating Services

### Generating Module File
_generate_module_cpp(chess
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chess
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(chess_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(chess_generate_messages chess_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg" NAME_WE)
add_dependencies(chess_generate_messages_cpp _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg" NAME_WE)
add_dependencies(chess_generate_messages_cpp _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg" NAME_WE)
add_dependencies(chess_generate_messages_cpp _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg" NAME_WE)
add_dependencies(chess_generate_messages_cpp _chess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chess_gencpp)
add_dependencies(chess_gencpp chess_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chess_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chess
)
_generate_msg_eus(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chess
)
_generate_msg_eus(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chess
)
_generate_msg_eus(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chess
)

### Generating Services

### Generating Module File
_generate_module_eus(chess
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chess
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(chess_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(chess_generate_messages chess_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg" NAME_WE)
add_dependencies(chess_generate_messages_eus _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg" NAME_WE)
add_dependencies(chess_generate_messages_eus _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg" NAME_WE)
add_dependencies(chess_generate_messages_eus _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg" NAME_WE)
add_dependencies(chess_generate_messages_eus _chess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chess_geneus)
add_dependencies(chess_geneus chess_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chess_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chess
)
_generate_msg_lisp(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chess
)
_generate_msg_lisp(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chess
)
_generate_msg_lisp(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chess
)

### Generating Services

### Generating Module File
_generate_module_lisp(chess
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chess
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(chess_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(chess_generate_messages chess_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg" NAME_WE)
add_dependencies(chess_generate_messages_lisp _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg" NAME_WE)
add_dependencies(chess_generate_messages_lisp _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg" NAME_WE)
add_dependencies(chess_generate_messages_lisp _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg" NAME_WE)
add_dependencies(chess_generate_messages_lisp _chess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chess_genlisp)
add_dependencies(chess_genlisp chess_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chess_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chess
)
_generate_msg_nodejs(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chess
)
_generate_msg_nodejs(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chess
)
_generate_msg_nodejs(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chess
)

### Generating Services

### Generating Module File
_generate_module_nodejs(chess
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chess
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(chess_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(chess_generate_messages chess_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg" NAME_WE)
add_dependencies(chess_generate_messages_nodejs _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg" NAME_WE)
add_dependencies(chess_generate_messages_nodejs _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg" NAME_WE)
add_dependencies(chess_generate_messages_nodejs _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg" NAME_WE)
add_dependencies(chess_generate_messages_nodejs _chess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chess_gennodejs)
add_dependencies(chess_gennodejs chess_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chess_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chess
)
_generate_msg_py(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chess
)
_generate_msg_py(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg;/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chess
)
_generate_msg_py(chess
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg"
  "${MSG_I_FLAGS}"
  "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chess
)

### Generating Services

### Generating Module File
_generate_module_py(chess
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chess
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(chess_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(chess_generate_messages chess_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Player.msg" NAME_WE)
add_dependencies(chess_generate_messages_py _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chessboard.msg" NAME_WE)
add_dependencies(chess_generate_messages_py _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Move.msg" NAME_WE)
add_dependencies(chess_generate_messages_py _chess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adarsh/chess_challenge/src/ros-chess-challenge/chess/msg/Chesspiece.msg" NAME_WE)
add_dependencies(chess_generate_messages_py _chess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chess_genpy)
add_dependencies(chess_genpy chess_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chess_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chess)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chess
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chess)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chess
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chess)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chess
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chess)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chess
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chess)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chess\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chess
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
