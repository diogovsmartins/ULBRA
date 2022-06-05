namespace Aula12.Models.Domain;

public class Charge {
    
    public int ChargeId { get; set; }
    public DateTime IssuanceDate { get; set; } 
    public DateTime DueDate { get; set; } 
    public double AmountCharge { get; set; } 
    
    public DateTime PaymentDate { get; set; } 
    public bool Status { get; set; }
    public int ClientId { get; set; }

    public Client Client;
    

    public Charge(){}
    
    public Charge( double amountCharge, int clientId)
    {   
        this.IssuanceDate = DateTime.Now;
        this.DueDate = DateTime.Now.AddDays(10);
        this.AmountCharge = amountCharge;
        this.Status = false;
        this.ClientId = clientId;
    }
}