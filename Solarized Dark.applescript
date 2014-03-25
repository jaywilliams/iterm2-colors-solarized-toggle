tell application "iTerm"
	try
		set _session to current session of current terminal
	on error
		tell me to quit
	end try
	
	tell _session
		-- Apple script colors are specified in RGB,
		-- with ranges from 0 to 65535.
		
		set fg_color to get foreground color
		
		if fg_color is {21074, 26471, 28270} then
			-- Solarized Dark Theme
			set foreground color to {28873, 33398, 33872}
			set background color to {0, 7722, 9941}
			set bold color to {33153, 37008, 37008}
			set selection color to {0, 10280, 12593}
			set selected text color to {33153, 37008, 37008}
			set cursor color to {28784, 33410, 33924}
			set cursor_text color to {0, 10207, 12694}
		end if
	end tell
end tell