local:
	dotnet build
	ASPNETCORE_URLS="https://*:5123" dotnet run

clean:
	rm -rf bin