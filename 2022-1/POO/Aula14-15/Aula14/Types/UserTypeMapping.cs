using Aula14.Model.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Aula14.Types;

public class UserTypeMapping : IEntityTypeConfiguration<User>
{
    public void Configure(EntityTypeBuilder<User> builder)
    {
        builder.ToTable("user");
        builder.HasKey(user => user.UserId);
        builder.Property(user => user.UserName).HasColumnType("varchar(100)");
        builder.Property(user => user.Email).HasColumnType("varchar(150)");
        builder.Property(user => user.Password).HasColumnType("varchar(20)");
        builder.HasMany(user => user.Addresses).WithOne();
    }
}