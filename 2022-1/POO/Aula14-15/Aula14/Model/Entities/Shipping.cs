namespace Aula14.Model.Entities;

public abstract class Shipping
{
    public int Id { get; set; }   
    public User User { get; set; }
    public Address Address { get; set; }
    
}