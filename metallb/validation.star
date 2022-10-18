load("@ytt:data", "data")
load("@ytt:assert", "assert")

data.values.name or assert.fail("name required")
data.values.address_pool or assert.fail("address_pool required")