package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 80, slack = 53, drag = 31, confidence = 91 }
assert(review.score(item) == 211)
assert(review.lane(item) == "ship")
