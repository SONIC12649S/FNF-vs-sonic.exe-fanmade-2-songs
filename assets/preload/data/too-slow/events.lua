function onCreate()

	makeLuaSprite('sky', 'greenHills/CIELO', -200, -300); 
	setLuaSpriteScrollFactor('sky', 0.8, 0.9);
	
	makeLuaSprite('piso', '/greenHills/PISO', -50, 50);
	setLuaSpriteScrollFactor('piso', 1, 1);
	
	makeLuaSprite('bartop','',0,-300)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','camOther')
    setScrollFactor('bartop',0,0)
    scaleObject('bartop', 1.5, 2);

    makeLuaSprite('barbot','',0,800)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','camOther')
    scaleObject('barbot', 1.5, 2);
    
    makeLuaText('d1', 'I m gonna', 0, 450, 600);
    setTextSize('d1', 30);
    setObjectCamera('d1', 'other', true);
    addLuaText('d1');
    setTextAlignment('d1', 'center');
        
    makeLuaText('d2', 'GETCHA!', 0, 650, 600);
    setTextSize('d2', 30);
    setObjectCamera('d2', 'other', true);
    addLuaText('d2');
    setTextAlignment('d2', 'center');
    doTweenColor('d2', 'd2', 'FF0000', 0.0001);
    
    makeLuaText('d3', 'I AM...', 0, 570, 600);
    setTextSize('d3', 30);
    setObjectCamera('d3', 'other', true);
    addLuaText('d3');
    setTextAlignment('d3', 'center');
    doTweenColor('d3', 'd3', 'FF0000', 0.0001);
    
    makeLuaText('d4', 'GOD !!', 0, 570, 600);
    setTextSize('d4', 30);
    setObjectCamera('d4', 'other', true);
    addLuaText('d4');
    setTextAlignment('d4', 'center');
    doTweenColor('d4', 'd4', 'FF0000', 0.0001);
    
    makeLuaText('d5', '*Maniacal Laughter*', 0, 500, 600);
    setTextSize('d5', 30);
    setObjectCamera('d5', 'other', true);
    addLuaText('d5');
    setTextAlignment('d5', 'center');
    doTweenColor('d5', 'd5', 'FF0000', 0.0001);
	
	addLuaSprite('sky', false);
	addLuaSprite('piso', false);
	
	doTweenAlpha('d1alpha', 'd1', 0, 0.001,'linear');
    doTweenAlpha('d2alpha', 'd2', 0, 0.001,'linear');
	doTweenAlpha('d3alpha', 'd3', 0, 0.001,'linear');
    doTweenAlpha('d4alpha', 'd4', 0, 0.001,'linear');
    doTweenAlpha('d5alpha', 'd5', 0, 0.001,'linear');
end

function onStepHit()
    
    if curStep == 928 then
        doTweenAlpha('hudalpha', 'camHUD', 0, 0.3, 'linear');
        doTweenY('bartopmove', 'bartop', -140, 0.5, 'linear');
	    doTweenY('barbotmove', 'barbot', 670, 0.5, 'linear');
	    setProperty('defaultCamZoom', 1.3);
	    doTweenAlpha('d1alpha', 'd1', 1, 0.3,'linear');
    doTweenAlpha('d2alpha', 'd2', 1, 0.3,'linear');
    removeLuaScript('data/too-slow/cameraMovement')
    end
    
    if curStep == 958 then
        doTweenAlpha('d1alpha', 'd1', 0, 0.2,'linear');
        doTweenAlpha('d2alpha', 'd2', 0, 0.2,'linear');
    
    end

    if curStep == 965 then
        doTweenAlpha('d3alpha', 'd3', 1, 0.3,'linear');
    
    end
    
    if curStep == 980 then
        doTweenAlpha('d3alpha', 'd3', 0, 0.2,'linear');
    
    end
    
    if curStep == 985 then
        doTweenAlpha('d4alpha', 'd4', 1, 0.3,'linear');
    end
    
    if curStep == 1000 then
        doTweenAlpha('d4alpha', 'd4', 0, 0.2,'linear');
    
    end
    
    if curStep == 1007 then
        doTweenAlpha('d5alpha', 'd5', 1, 0.3,'linear');
        setProperty('defaultCamZoom', 1);
        
    end
    
    if curStep == 1054 then
        doTweenAlpha('d5alpha', 'd5', 0, 0.2,'linear');
    
    end
    
    if curStep == 1059 then
        doTweenAlpha('hudalpha', 'camHUD', 1, 0.3, 'linear');
        doTweenY('bartopmove', 'bartop', -400, 0.5, 'linear');
	    doTweenY('barbotmove', 'barbot', 950, 0.5, 'linear');
	    setProperty('defaultCamZoom', 0.65);
	    addLuaScript('data/too-slow/cameraMovement')
	end
	
	if curStep == 2016 then
	    setProperty('defaultCamZoom', 1.2);
    
    end
    
    if curStep == 2030 then
	    setProperty('defaultCamZoom', 0.65);
	end
end