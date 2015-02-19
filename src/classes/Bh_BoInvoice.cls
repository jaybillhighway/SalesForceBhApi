public class Bh_BoInvoice extends Bh_BoBase{
    // Who the invoice belong to. This info is setup by the API
    public Integer InvoiceNumber;   
    // Who the invoice belong to. This info is setup by the API
    public Integer ClientID;    
    // Chapter ID
    public Integer GroupId;
    // MemberId
    public Integer UserId;  
    // OpportunityId
    public Integer OpportunityId;
    //
    public Integer ClientGroupId;   
    // List of line items for the invoice.
    public List<Bh_BoInvoiceItem> InvoiceItems = new List<Bh_BoInvoiceItem>();
}