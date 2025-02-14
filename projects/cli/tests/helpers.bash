# HELPERS

function expectToPass {
  [ "$status" -eq 0 ]
}

function expectToFail {
  [ "$status" -ne 0 ]
}

function expectFileExists {
  test -f $1
  expectToPass
}

function expectFileDoesNotExist {
  test ! -f $1
  expectToPass
}

function expectOutputContains {
  [[ $output == *$1* ]]
}

function expectFileContains {
  run cat $1
  [[ $output == *$2* ]]
}

function printLastOutput {
  echo $output >&3
}

function cleanupTmpFolder {
  if [ -d "tests/tmp" ]; then
    rm -r tests/tmp
  fi
}