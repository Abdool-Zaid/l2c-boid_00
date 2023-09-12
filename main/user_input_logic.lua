local res = {}
 
function res.init()

    local cursorData = love.image.newImageData(1, 1)
    cursorData:setPixel(0, 0, 0, 0, 0, 0) 
    local cursor = love.mouse.newCursor(cursorData, 0, 0) 
    love.mouse.setCursor(cursor)

end
 
function res.check_user_input()
    
end

return res