build:
	node_modules/.bin/ngc -p tsconfig-aot.json
	node_modules/.bin/rollup -c rollup-config.js
	cp src/app/*.html wwwroot
	cp src/app/*.css wwwroot
	dotnet build

local: build
	ASPNETCORE_URLS="https://*:5123" dotnet run

deploy: build
	dotnet publish -c Release

clean:
	rm -rf bin