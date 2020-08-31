#!/bin/sh

workaround_buggy_warnings_as_errors_return_value() {
  _TEMP_FILE=$(mktemp mix_compile_stderr.XXXXXXXX)

  # prevents warnings in dependencies from being confused with warnings in the current project
  mix deps.compile

  # the following pair of lines emulate the behaviour of tee for stderr
  mix compile --force 2> "$_TEMP_FILE"
  cat "$_TEMP_FILE" 1>&2

  grep -lq "warning:" "$_TEMP_FILE"
  _GREP_RETURN_VALUE=$?

  rm "$_TEMP_FILE"

  if [ $_GREP_RETURN_VALUE -eq 0 ]; then
    return 1
  else
    return 0
  fi
}
