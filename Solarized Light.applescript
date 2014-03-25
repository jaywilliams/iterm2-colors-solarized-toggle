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
		
		if fg_color is {28873, 33398, 33872} then
			-- Solarized Light Theme
			set foreground color to {21074, 26471, 28270}
			set background color to {64842, 62778, 56626}
			set bold color to {18134, 23373, 25098}
			set selection color to {60138, 58339, 52171}
			set selected text color to {18134, 23373, 25098}
			set cursor color to {21257, 26684, 28737}
			set cursor_text color to {60037, 58326, 52284}
		end if
	end tell
end tell