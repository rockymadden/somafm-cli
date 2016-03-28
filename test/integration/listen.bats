#!/usr/bin/env bats

load ../bats

@test 'listen with invalid quality should exit 1' {
  run build/bin/somafm listen groovesalad --quality=invalid
  [ "${status}" -eq 1 ]
}
