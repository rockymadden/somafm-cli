#!/usr/bin/env bats

load lib/bats

@test '-v should output version' {
  run build/bin/somafm -v
  [ "${status}" -eq 0 ]
  [ "$(expr "${output}" : 'v*')" -ne 0 ]
}

@test '--version should output version' {
  run build/bin/somafm --version
  [ "${status}" -eq 0 ]
  [ "$(expr "${output}" : 'v*')" -ne 0 ]
}
