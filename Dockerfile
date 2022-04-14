FROM mcr.microsoft.com/dotnet/core/sdk:2.1
LABEL MAINTAINER "Appsecco"

ENV ASPNETCORE_URLS=http://0.0.0.0:6000

COPY . /app

WORKDIR /app

RUN dotnet restore \
    && dotnet ef database update

EXPOSE 6000

CMD ["dotnet", "watch", "run"]
