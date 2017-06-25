.PHONY: format

format:
	@find . -name "*.lua" -not -path  "./Libs/*" -exec luaformatter -a -t 1 {} \; 
check:
	@luacheck . --exclude-files 'Libs' --std lua51 -g
