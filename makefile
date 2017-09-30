local:
	node_modules/.bin/ngc -p tsconfig-aot.json
	node_modules/.bin/rollup -c rollup-config.js
	dotnet build
	ASPNETCORE_URLS="https://*:5123" dotnet run

clean:
	rm -rf bin