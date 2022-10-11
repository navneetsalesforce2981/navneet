public class WhatsAppMessageService {

    @AuraEnabled
    @future(callout=true)
    public static void abc(String id1)
    {
Contact cn=[select id ,Phone,Name from Contact where id=:id1];
       String Message=cn.Name;
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://graph.facebook.com/v14.0/101912666040983/messages');
        req.setMethod('POST'); 
        req.setHeader('Content-Type','application/json');
        String body='{"messaging_product":"whatsapp","to":"918318100098","recipient_type": "individual","type": "template", "template": { "name": "first", "language": {"code": "en","policy": "deterministic" },"components": [{"type": "body", "parameters": [ { "type": "text", "text": "'+Message+'"} ]}] }}';
      req.setBody(body);
        String token='EAAHCaEOKdcEBADOmspZA5N1agurZB6tY8RNCtWmSCIEK7FEMgqjOwNnE6lYzp2q77eZBrMQmswwGb06SY0u90ONRNHzxNnb4vwFKZATRdKe1uBxPIBiVByplTeZBbprlEXcCOO4M1xdnPYoQjGGIileUU9itj3InLmxYQMBZAZAGjpcjk1fIg17HJ9xgdm2vgwkZARtdZALsYyfmih9fGugRN';
        req.setHeader('Authorization', 'Bearer '+token);
        HttpResponse res = http.send(req);
        
    
}
}