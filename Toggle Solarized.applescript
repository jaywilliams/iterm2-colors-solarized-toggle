tell application "iTerm"
	activate

	try
		set _session to current session of current terminal
	on error
		set _term to (make new terminal)
		tell _term
			launch session "Default"
			set _session to current session
		end tell
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
		else
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