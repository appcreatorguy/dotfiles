local present, possession = pcall(require, "possession")

if not present then
  return
end

local options = {
  commands = {
    save = 'SSave',
    load = 'SLoad',
    delete = 'SDelete',
    list = 'SList',
  }
}

possession.setup{options}
