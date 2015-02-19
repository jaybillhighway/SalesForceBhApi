public with sharing class Bh_Api {
    public static Bh_BoReply PostInvoice(Bh_BoInvoice invoice){
        Bh_BoReply bhReply = new Bh_BoReply();
        bhReply.Pass = true;
        return bhReply;
    }       
}