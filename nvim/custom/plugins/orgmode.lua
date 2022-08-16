local present, orgmode = pcall(require, "orgmode")

if not present then
   return
end

orgmode.setup_ts_grammar()

local options = {
  org_hide_leading_stars = true,
  org_hide_emphasis_markers = true,
}

orgmode.setup(options)
