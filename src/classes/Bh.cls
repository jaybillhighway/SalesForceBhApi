public class Bh {
        public static void sendLogs(Object log) {
    
        HttpResponse res = new HttpResponse();
        try {
            HttpRequest req = new HttpRequest();
            req.setEndpoint('http://logs-01.loggly.com/inputs/8e8cb0b7-b9df-4b8f-a2aa-ab5006b0124c/');
            req.setMethod('POST');
            req.setHeader('content-type', 'application/json');
            req.setHeader('X-LOGGLY-TAG','Bh_Logging');
            req.setBody(JSON.serialize(log));

            Http http = new Http();
            res = http.send(req);
            System.debug(res.toString());

        } catch (Exception e) {
            System.debug(e);
            System.debug(res.toString());
            
        }
    }
    
        public static void JsonTest() {
        List<Account> accounts = [SELECT id, name FROM Account LIMIT 2]; 
        String accountsJSON = JSON.serializePretty(accounts);
        
        List<Account> accountsDeserialized = (List<Account>) JSON.deserialize(accountsJSON, List<Account>.class);
        
        
        System.debug(accountsDeserialized[0].Name);
    }
}