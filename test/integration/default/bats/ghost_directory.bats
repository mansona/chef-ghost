#!/usr/bin/env bats

@test "ghost directory has been created" {
  run ls /apps/ghost/*
  [ "$status" -eq 0 ]
}
