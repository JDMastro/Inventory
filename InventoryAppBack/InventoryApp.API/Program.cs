using InventoryApp.API.Middleware;
using InventoryApp.Application;
using InventoryApp.Identity;
using InventoryApp.Infrastructure;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();


//INYECTANDO DEPENDENCIAS A LA CLASE PROGRAM
builder.Services.AddInfrastructureServices(builder.Configuration);
builder.Services.AddApplicationServices();
builder.Services.ConfigureIdentityService(builder.Configuration);

//CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("corsPolicity", builder =>
        builder.AllowAnyOrigin()
        .AllowAnyMethod()
        .AllowAnyHeader()
    );
});

 //builder.WebHost.UseUrls("https://*:8081", "http://*:8080");

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
//Resgistrar el middleware
app.UseMiddleware<ExceptionMiddleware>();
app.UseAuthentication();
app.UseAuthorization();
app.UseCors("corsPolicity");

app.MapControllers();

app.Run();
