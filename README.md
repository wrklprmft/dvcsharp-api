# Damn Vulnerable C# Application (API Only)

## Getting Started

### Docker

```
docker-compose up
```

### Manual

Install .NET Core 3.x SDK
[Microsoft .NET Core SDK](https://dotnet.microsoft.com/en-us/download/dotnet/3.1)

Install dependencies and migrate database:

```
dotnet restore
dotnet tool install --global dotnet-ef
dotnet-ef database update
```

Start application server:

```
dotnet run
```

Start application server with watcher for auto-reload on change:

```
dotnet watch run
```

## Build Docker

* To build a docker image run the following command

```bash
docker build -t appsecco/dvcsharp .
```

* To run the docker container

```bash
docker run -d --name dvcsharp -it -p 5000:5000 appsecco/dvcsharp
```

## Solution

TBD


