FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim

WORKDIR /app

COPY . .

RUN dotnet publish -c Release -o out

EXPOSE 80

CMD ["dotnet", "out/WebAppWithDatabaseDemo.dll"]
