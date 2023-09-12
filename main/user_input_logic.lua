local res = {}
 
function res.init()

    local cursorData = love.image.newImageData(1, 1)
    cursorData:setPixel(0, 0, 0, 0, 0, 0) 
    local cursor = love.mouse.newCursor(cursorData, 0, 0) 
    love.mouse.setCursor(cursor)
    

    
end
 function  love.mousepressed(x,y,button,istouch,presses)
    if button == 1 then
        Projectile.CoorY = Projectile.CoorY-12

    end
    
 end
function res.check_user_input()
    
end

return res