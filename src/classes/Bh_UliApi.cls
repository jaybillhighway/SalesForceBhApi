/** 
* @description The main API for ULI Sales Force - BH Integation. All calls to BH will go through this API 
*
* @author jay@billhighway.com
*/
public class Bh_UliApi {
    
  	/**
    * @description Send a new invoice to BH. 
    *
    * @param Bh_BoInvoice Invoice Data
    * @return Bh_BoReply Status of the API call
    */ 
    public Bh_BoReply CreateInvoice(Bh_BoInvoice invoice) {
        return new Bh_BoReply(); 
    }

    /**
    * @description Send a new invoice to BH. 
    *
    * @param Bh_BoMember Member detail. If the member is not in BH, a new member record will be created
    * @param Bh_BoInvoice Invoice Data
    * @return Bh_BoReply Status of the API call
    */ 
    public Bh_BoReply CreateInvoice(Bh_BoMember member, Bh_BoInvoice invoice) {
        return new Bh_BoReply(); 
    }
    
    /**
    * @description Apply a credit to an invoice. 
    *
    * @param memberId MemberID this credit should be applied
    * @param invoiceNumber credit will be applied to this invoice number
	* @param creditAmount Amount to be credited 
 	* @return Bh_BoReply Status of the API call
    *, / 
    public Bh_BoReply RequestInvoiceCredit(String memberId, String invoiceNumber, Double creditAmount) {
        return new Bh_BoReply(); 
    }
        
    /**
    * @description Apply a credit to a user. Since an invoice is not passed the refund will be split between all invoices
    *
    * @param memberId MemberID this credit should be applied
	* @param creditAmount Amount to be credited 
 	* @return Bh_BoReply Status of the API call
    */  
    public Bh_BoReply RequestInvoiceCredit(String memberId, Double CreditAmount) {
        return new Bh_BoReply(); 
    }
    
    /** 
    * @description Send a request for a Refund. Refund is applied to a member
    *
    * @param paymentId Id of the payment
    * @param refundAmount Amount to be refunded
 	* @return Bh_BoReply Status of the API call
    */ 
    public Bh_BoReply RequestInvoiceRefund(String paymentId, Double refundAmount) {
        return new Bh_BoReply(); 
    }
 
    /** 
    * @description To check if end to end conactivity is working. Calling this API we will call Bh Rest API service. 
    *
    * @return Returns TRUE if all is good with the API
    */ 
    public Bh_BoReply Ok() {
        Bh_BoReply ok = new Bh_BoReply();
        return ok;
    }
}