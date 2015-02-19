@isTest     
public with sharing class Bh_UliApiQa_PostInvoice {
@isTest static void PostPayment() {
            
        Bh_BoInvoiceItem invoiceItemOne = new Bh_BoInvoiceItem();
        invoiceItemOne.ProdcutCode = 1;
        invoiceItemOne.ItemDescription = 'Membership Due 2015';
        invoiceItemOne.Quantity = 1;
        invoiceItemOne.Amount = 125.25;
        
        Bh_BoInvoiceItem invoiceItemTwo = new Bh_BoInvoiceItem();   
        invoiceItemTwo.ProdcutCode = 2;
        invoiceItemTwo.ItemDescription = 'Design Book';
        invoiceItemTwo.Quantity = 10;
        invoiceItemTwo.Amount = 9.99;
        
        Bh_BoInvoice invoiceDetail = new Bh_BoInvoice();
        invoiceDetail.InvoiceNumber = 1000;
        invoiceDetail.ClientId = 1227;
        invoiceDetail.GroupId = 125125;
        invoiceDetail.UserId = 125145874;
        invoiceDetail.OpportunityId = 125;
        invoiceDetail.ClientGroupId = 100;
        
        invoiceDetail.InvoiceItems.add(invoiceItemOne);
        invoiceDetail.InvoiceItems.add(invoiceItemTwo);

    	Bh_BoMember member = new Bh_BoMember();
    
        // Call the BH API              
        Bh_UliApi api = new Bh_UliApi();
        Bh_BoReply reply = api.CreateInvoice(member, invoiceDetail);
                
        System.assertEquals(true,reply.Pass);
        
        System.debug('My debug statement');
}
}