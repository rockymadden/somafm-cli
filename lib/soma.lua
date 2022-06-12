local utils = require("mp.utils")
require 'mp.options'

-- https://github.com/mpv-player/mpv/issues/555
mp.command('keybind q quit')
mp.command('keybind c "quit 77"')

-- read color codes; fallback to default colors
local options = {
  color0 = '0',
  color1 = '0',
  color2 = '0',
  color  = 'false',
}
read_options(options, "soma")

-- print ascii color codes
local function escapeNumber(number)
  if options.color == 'true' then
    local escapeString = string.char(27) .. '[%dm'
    return escapeString:format(number)
  else
    return ''
  end
end

local function ends_with(str, ending)
   return ending == "" or str:sub(-#ending) == ending
end

local function media_title(name, val)
  if val ~= nil then
    mp.msg.info(escapeNumber(options.color0) .. (string.gsub(utils.to_string(val),'"', "")))
  end
end

-- pass as force media title if media title val is valid
local function media_title2(name, val)
  if val ~= nil then
    if not ends_with(val,'.pls') then
      if not ends_with(val,'-aac') then
        mp.msg.info(escapeNumber(options.color1) .. (string.gsub(utils.to_string(val),'"', "")))
      end
    end
  end
end

mp.observe_property("metadata/icy-name", "string", media_title)
mp.observe_property("metadata/icy-genre", "string", media_title)
mp.observe_property("metadata/icy-title", "string", media_title2)
