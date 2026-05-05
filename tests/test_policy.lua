package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 55, capacity = 104, latency = 19, risk = 25, weight = 5 }
assert(policy.score(signal_case_1) == -7)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 96, capacity = 85, latency = 20, risk = 5, weight = 13 }
assert(policy.score(signal_case_2) == 240)
assert(policy.classify(signal_case_2) == "accept")
local signal_case_3 = { demand = 69, capacity = 103, latency = 19, risk = 12, weight = 9 }
assert(policy.score(signal_case_3) == 135)
assert(policy.classify(signal_case_3) == "review")
