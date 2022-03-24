FROM mcr.microsoft.com/dotnet/core/sdk:3.1
LABEL MAINTAINER "Appsecco"

ENV ASPNETCORE_URLS=http://0.0.0.0:5000

COPY . /app

WORKDIR /app

RUN dotnet restore \
    && dotnet tool install --global dotnet-ef \
    && dotnet-ef database update

EXPOSE 5000

CMD ["dotnet", "watch", "run"]
