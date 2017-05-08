#!/bin/bash
for i in {1..128}; do ./run.sh $i; done > test_output
