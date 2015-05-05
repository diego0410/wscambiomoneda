/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author DIEGO
 */
@WebService(serviceName = "cambio")
public class cambio {

    /**
     * This is a sample web service operation
     */
    
    
    @WebMethod(operationName = "convertEuro")
    public Double convertertEuro(@WebParam(name = "dollar") Double dollar) {
        return dollar * EURO;
    }
    
    @WebMethod(operationName = "convertPound")
    public Double convertertPound(@WebParam(name = "dollar") Double dollar) {
        return dollar * POUND;
    }
        
    @WebMethod(operationName = "convertYen")
    public Double convertertcanYen(@WebParam(name = "dollar") Double dollar) {
        return dollar * YEN;
    }
      
    @WebMethod(operationName = "convertCDNolllar")
    public Double convertertcandollar(@WebParam(name = "dollar") Double dollar) {
        return dollar * CDN_DOLLAR;  
        
    }
    private static final double POUND = .56094;
    private static final double EURO = .7061;
    private static final double CDN_DOLLAR = 1.06957;
    private static final double YEN = 106.386;
    
}


    /**
     * Web service operation
     */
    
