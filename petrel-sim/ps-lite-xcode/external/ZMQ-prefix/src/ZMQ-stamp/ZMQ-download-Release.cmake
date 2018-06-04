

set(command "/Applications/CMake.app/Contents/bin/cmake;-P;/Users/qihuazhou/Desktop/ps-lite-xcode/external/ZMQ-prefix/tmp/ZMQ-gitclone.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/qihuazhou/Desktop/ps-lite-xcode/external/ZMQ-prefix/src/ZMQ-stamp/ZMQ-download-out.log"
  ERROR_FILE "/Users/qihuazhou/Desktop/ps-lite-xcode/external/ZMQ-prefix/src/ZMQ-stamp/ZMQ-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/qihuazhou/Desktop/ps-lite-xcode/external/ZMQ-prefix/src/ZMQ-stamp/ZMQ-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "ZMQ download command succeeded.  See also /Users/qihuazhou/Desktop/ps-lite-xcode/external/ZMQ-prefix/src/ZMQ-stamp/ZMQ-download-*.log")
  message(STATUS "${msg}")
endif()
