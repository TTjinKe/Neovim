local autopairs_status, autopairs = pcall(require, "nvim-autopairs")
local autopairs_rule_status, autopairs_rule = pcall(require, "nvim-autopairs.rule")


if not autopairs_status then
  print("autopairs_status error!!")
  return
end


if not autopairs_rule_status then
  print("autopairs_rule_status error!!")
  return
end

autopairs.setup {}
