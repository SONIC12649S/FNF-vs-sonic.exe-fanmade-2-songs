function onCreate()

	makeLuaSprite('sky', 'greenHills/CIELO', -200, -300); 
	setLuaSpriteScrollFactor('sky', 0.8, 0.9);
	
	makeLuaSprite('piso', '/greenHills/PISO', -50, 50);
	setLuaSpriteScrollFactor('piso', 1, 1);
	
	makeLuaSprite('bartop','',0,-300)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)
    scaleObject('bartop', 1.5, 2);

    makeLuaSprite('barbot','',0,800)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
    scaleObject('barbot', 1.5, 2);
    
    addLuaSprite('sky',false)
    addLuaSprite('piso',false)
    addLuaSprite('bartop',false)
    addLuaSprite('barbot',false)
end

function onStepHit()
    
    if curStep == 245 then
        doTweenZoom('cam', 'camGame', 1.3, 0.6, linear);
    
    end
    
    if curStep == 255 then
        doTweenZoom('cam', 'camGame', 0.65, 0.6, linear);
    
    end
    
    if curStep == 767 then
        doTweenY('bartopmove', 'bartop', -140, 0.5, 'linear');
	    doTweenY('barbotmove', 'barbot', 670, 0.5, 'linear');
	
	end
	
	if curStep == 1031 then
        setProperty('defaultCamZoom', 0.75);
    
    end
    
    if curStep == 1061 then
        setProperty('defaultCamZoom', 0.95);
    
    end

    if curStep == 1096 then
        setProperty('defaultCamZoom', 1.05);
    
    end
    
    if curStep == 1126 then
        setProperty('defaultCamZoom', 1.3);
    
    end
    if curStep == 1151 then
        setProperty('defaultCamZoom', 0.65);
        doTweenY('bartopmove', 'bartop', -300, 0.5, 'linear');
	    doTweenY('barbotmove', 'barbot', 800, 0.5, 'linear');
    
    end
    
    if curStep == 1279 then
        doTweenY('bartopmove', 'bartop', -140, 0.5, 'linear');
	    doTweenY('barbotmove', 'barbot', 670, 0.5, 'linear');
	
	end
	
	if curStep == 1806 then
        doTweenY('bartopmove', 'bartop', -300, 0.5, 'linear');
	    doTweenY('barbotmove', 'barbot', 800, 0.5, 'linear');
	end
end