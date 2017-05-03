#!/usr/bin/env bats

load ../bats

@test '-v should output version' {
  run build/bin/somafm -v
  [ "${status}" -eq 0 ]
}

@test '--version should output version' {
  run build/bin/somafm --version
  [ "${status}" -eq 0 ]
}
