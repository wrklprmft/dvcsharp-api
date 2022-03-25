FROM mcr.microsoft.com/dotnet/core/sdk:3.1
LABEL MAINTAINER "Appsecco"

ENV ASPNETCORE_URLS=http://0.0.0.0:5000

COPY . /app

WORKDIR /app

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet restore \
    && dotnet tool install --global dotnet-ef \
    && dotnet-ef database update \
    && dotnet dev-certs https

EXPOSE 5000

CMD ["dotnet", "watch", "run"]
