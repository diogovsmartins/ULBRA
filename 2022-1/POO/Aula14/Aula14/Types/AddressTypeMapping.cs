using Aula14.Model.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Aula14.Types;

public class AddressTypeMapping :IEntityTypeConfiguration<Address>
{
    public void Configure(EntityTypeBuilder<Address> builder)
    {
        builder.ToTable("address");
        builder.HasKey(address => address.AddressId);
        builder.Property(address => address.HouseNumber).HasColumnType("decimal(5)");
        builder.Property(address => address.Avenue).HasColumnType("varchar(200)");
        builder.Property(address => address.Zipcode).HasColumnType("varchar(10)");
    }
}