using DeveloperZone.Models;
using Microsoft.EntityFrameworkCore;
using VMS_API.Interfaces;
using VMS_API.Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddDbContext<CoreDbContext>(options => 
options.UseSqlServer("Server=DEVLOPER;initial catalog=VMSDB;Trusted_Connection=True;"));

builder.Services.AddCors(option => {
    option.AddPolicy("ServiceAPIPolicy", builder =>
    {
        builder.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod();
    });
});
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddTransient<IMaster, MasterServices>();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseAuthorization();

app.MapControllers();

app.Run();
