load("@ytt:data", "data")
load("@ytt:assert", "assert")

data.values.hostpath or assert.fail("hostpath required")

if data.values.load_balancer_ips and data.values.server_ip:
    assert.fail("load_balancer_ips and server_ip are mutually exclusive")
end

data.values.load_balancer_ips or data.values.server_ip or data.values.metallb_address_pool or assert.fail("one of [load_balancer_ips, server_ip, metallb_address_pool] required")
