load("@ytt:data", "data")
load("@ytt:assert", "assert")

data.values.hostpath or assert.fail("hostpath required")