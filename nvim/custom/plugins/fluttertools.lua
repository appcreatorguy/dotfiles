local present, fluttertools = pcall(require, "flutter-tools")

if not present then
   return
end

local options = {
  decorations = {
    statusline = {
      app_version = true,
      device = true,
    }
  }
}

fluttertools.setup(options)
