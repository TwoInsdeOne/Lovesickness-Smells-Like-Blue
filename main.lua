function love.load()
    require 'class'
    require 'relogio'
    require 'utils'
    require 'player'
    world = love.physics.newWorld(0, 0)
    require 'world'
    
    player:start()
    main_clock = relogio:new()
    main_clock:start()
    width, height = 1080, 620
    user_w, user_h = love.window.getDesktopDimensions()

    game_ratio = width/height
    user_ratio = user_w/user_h
    screen_multiplier = 0
    if user_ratio > game_ratio then
        screen_multiplier = user_h/height
    elseif user_ratio <= game_ratio then
        screen_multiplier = user_w/width
    end
    screen_offset = (user_h - height)/2

    love.window.setMode(width, height, {vsync = true})
    love.window.setTitle('Lovesickness smells like blue')

    love.graphics.setBackgroundColor(0, 0, 0)

    main_font = love.graphics.newFont("VerilySerifMono.otf", 90)
    love.graphics.setFont(main_font)

    resolution_mode = 'window'
    quiting = false
    quiting_count = 0

    --controls
    joysticks = love.joystick.getJoysticks()
    horizontal = 0
    vertical = 0

    --camera
    camera_x = 0
    camera_y = 0
    --for camera_speed, 1 is the fastest. don't put less than 1
    camera_speed = 9

    light_effects = {}
    shader1 = love.graphics.newShader[[
    vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ){
      vec4 pixel = color;
      number average = (pixel.r+pixel.b+pixel.g)/3.0;
      number factor_x = abs(screen_coords.x - 540);
      number factor_y = abs(screen_coords.y - 310);
      pixel.r = pixel.r + (average - pixel.r) * (factor_x/1080);
      pixel.g = pixel.g + (average - pixel.g) * (factor_x/600);
      pixel.b = pixel.b + (average - pixel.b) * (factor_x/600);
      return pixel;
    }
  ]]
    sx = 0
    sy = 0

end

function love.draw()
    
    if resolution_mode == 'fullscreen' then
        love.graphics.translate(0, screen_offset/2)
        love.graphics.scale(screen_multiplier)
        
    elseif resolution_mode == 'window' then
        love.graphics.scale(1)
    end
    love.graphics.setColor(255*quiting_count, 180 - 180*quiting_count, 120 - 120*quiting_count, 150*quiting_count)
    love.graphics.print("quiting...", 0, 0, 0, 0.25, 0.25)
    love.graphics.setColor(0, 0, 190)
    
    --debug
    love.graphics.print(string.format("%d, %d", mouseX(), mouseY()), 0, 50, 0, 0.25, 0.25)
    --love.graphics.print(string.format("\n%f", main_clock:getTime()), 0, 50, 0, 0.25, 0.25)

    --CAMERA
    love.graphics.translate(width/2 - camera_x, height/2 - camera_y)
    --###

    love.graphics.shear(sx, sy)
    love.graphics.rotate( sx*sy )

    for i = 1, #light_effects do
        if light_effects[i].layer == 'behind' then
            light_effects[i]:draw()
        end
    end
    --love.graphics.setShader(shader1)
    portal_controller:draw()
    icon_controller:draw()
    ball_ammo_controller:draw()
    laser_controller:draw()
    
    player:draw()

    walls:draw()
    cwall_controller:draw()

    for i = 1, #light_effects do
        if light_effects[i].layer ~= 'behind' then
            light_effects[i]:draw()
        end
    end
    love.graphics.setShader()
    message_controller:draw()
    love.graphics.translate(-width/2 + camera_x, -height/2 + camera_y)
    player:draw2()
    
    
end

function love.update(dt)
    normalize_shear(dt)
    camera_x = (camera_x*camera_speed + player:getX())/(camera_speed + 1)
    camera_y = (camera_y*camera_speed + player:getY())/(camera_speed + 1)
    if #joysticks > 0 then
        local joy = joysticks[1]
        horizontal = joy:getAxis(1)
        vertical = joy:getAxis(2)
    end
    world:update(dt)
    main_clock:update(dt)
    if quiting then
        quiting_count = quiting_count + dt
        if quiting_count >= 1 then
            love.event.quit()
        end
    end
    laser_controller:update(dt)
    player:update(dt)
    cwall_controller:update(dt)
    portal_controller:update(dt)
    message_controller:update(dt)
    icon_controller:update(dt)
    ball_ammo_controller:update(dt)
    lightEffectUpdate(dt)
    
end

function all_objects()
    print("_____________")
    print(#laser_controller.list, 'laser')
    print(#cwall_controller.list, 'circle wall')
    print(#portal_controller.list, 'portal')
    print(#message_controller.list, 'msg')
    print(#icon_controller.list, 'icon')
    print(#ball_ammo_controller.list, 'ball')
    print(#light_effects, 'light')
end

function love.keypressed(key)
    if key == 'f4' then
        menu_options.fullscreen_window()
    end
    if key == 'escape' then
        quiting = true
    end


    if #joysticks == 0 then
        if key == 'w' or key == 'up' then
            vertical = vertical - 1
        end
        if key == 's' or key == 'down' then
            vertical = vertical + 1
        end
        if key == 'd' or key == 'right' then
            horizontal = horizontal + 1
        end
        if key == 'a' or key == 'left' then
            horizontal = horizontal - 1
        end
        if key == 'g' then
            player:launch_ball()
        end
        if key == 'q' then
            all_objects()
        end
    end
end

function love.keyreleased(key)
    if key == 'escape' then
        quiting = false
        quiting_count = 0
    end
    if #joysticks == 0 then
        if key == 'w' or key == 'up' then
            vertical = vertical + 1
        end
        if key == 's' or key == 'down' then
            vertical = vertical - 1
        end
        if key == 'd' or key == 'right' then
            horizontal = horizontal - 1
        end
        if key == 'a' or key == 'left' then
            horizontal = horizontal + 1
        end
    end
end

function love.mousepressed(x, y, key)
    if key == 1 then
        player.body:setPosition(mouseX(), mouseY())
    end
end

function mouseX()
    return love.mouse.getX() - width/2 + camera_x
end

function mouseY()
    return love.mouse.getY() - height/2 + camera_y
end