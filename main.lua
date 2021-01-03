
timer = 0
cooldown = 0 
function love.load()
	print("You smell =)")
end

function love.draw()
	love.graphics.clear(0.5,0.5,0.1)
	love.graphics.setColor(1,1,1,1)
	love.graphics.print(timer, 25, 25)
end

function love.update(dt)
	if love.keyboard.isDown("left") and cooldown == 0 then
		timer = timer -1
		if timer < 0 then timer = 10 end
		cooldown = 0.25
elseif love.keyboard.isDown("right") and cooldown == 0 then
		timer = timer +1
		if timer < 0 then timer = 10 end
		cooldown = 0.25
	end


	if cooldown > 0 then
		cooldown = cooldown -dt
		if cooldown < 0 then cooldown = 0 end
	end
end
