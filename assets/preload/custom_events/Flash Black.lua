function onCreate()
	makeLuaSprite('wt', 'black', 0, 0);
	setLuaSpriteScrollFactor('wt', 0, 0);
	setProperty('wt.alpha', 0.0001);
	addLuaSprite('wt', false);
	scaleObject('wt', 1.25, 1.25);
	setObjectCamera('wt', 'hud');	
end

function onEvent(name, value1, value2)
	if name == "Flash Black" then
		setProperty('wt.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'wt', 0, 0.5, 'linear');
			setObjectCamera('wt', 'hud');
	end
end