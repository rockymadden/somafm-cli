#!/usr/bin/env bats

load bats

@test 'channels should output more than one channel and exit 0' {
  run build/bin/somafm channels
  [ "${#lines[@]}" -gt 1 ]
  [ "${status}" -eq 0 ]
}
