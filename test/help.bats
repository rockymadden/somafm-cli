#!/usr/bin/env bats

load bats

@test '-h should output usage' {
  run build/bin/somafm -h
  [ "${status}" -eq 0 ]
  [ "${#lines[@]}" -gt 1 ]
}

@test '--help should output usage' {
  run build/bin/somafm --help
  [ "${status}" -eq 0 ]
  [ "${#lines[@]}" -gt 1 ]
}
