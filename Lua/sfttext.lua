--
--  Author: Scott Simpson
--  Version 2.1.18
--
-- 	This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  A copy of the GNU General Public License is available at <http://www.gnu.org/licenses/>.
-- 
-------------------------------------------------------------------------------------------------------------------------------------
--
local function run(event)
  lcd.clear()
  drawTopPanel()
  local i
  local row = 1
  if messageFirst == messageNext then
    lcd.drawText(1, row * 10 + 2, "There are no text messages to display", 0)
  else
    for i = messageFirst, messageNext - 1, 1 do
      lcd.drawText(1, row * 10 + 2, messageArray[(i % MESSAGEBUFFERSIZE) + 1], 0)
      row = row + 1
    end
  end
end

return {run=run}