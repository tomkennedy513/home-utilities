load("@ytt:data", "data")
load("@ytt:assert", "assert")

data.values.webpassword or assert.fail("webpassword required")