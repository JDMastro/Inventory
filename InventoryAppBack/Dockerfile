#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
#EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["InventoryApp.API/InventoryApp.API.csproj", "InventoryApp.API/"]
COPY ["InventoryApp.Application/InventoryApp.Application.csproj", "InventoryApp.Application/"]
COPY ["InventoryApp.Domain/InventoryApp.Domain.csproj", "InventoryApp.Domain/"]
COPY ["InventoryApp.Identity/InventoryApp.Identity.csproj", "InventoryApp.Identity/"]
COPY ["InventoryApp.Infrastructure/InventoryApp.Infrastructure.csproj", "InventoryApp.Infrastructure/"]
RUN dotnet restore "InventoryApp.API/InventoryApp.API.csproj"
COPY . .
WORKDIR "/src/InventoryApp.API"
RUN dotnet build "InventoryApp.API.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "InventoryApp.API.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENV ASPNETCORE_URLS=http://+:5005  
ENTRYPOINT ["dotnet", "InventoryApp.API.dll"]