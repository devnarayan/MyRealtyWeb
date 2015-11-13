namespace MonerisTest
{
    using System;
    using System.Collections;

	public class TestReauthCustInfo
	{
	  public static void Main(string[] args)
	  {
	  	
	  	/************************* Post Request Variables *****************************/
	  	
	        string host = "esqa.moneris.com";
	        string store_id = "store5";
	        string api_token = "yesguy";
	        
	        /************************* Transactional Variables ***************************/

            string order_id = "Need_Unique_Order_ID_1234567";
            string orig_order_id = "Need_Unique_Order_ID_12345";
            string amount = "304.00";
            string txn_number = "174885-0_7";
            string crypt = "7";
	        
	        /********************* Billing/Shipping Variables ****************************/
	        
	        string first_name = "Bob";
	        string last_name = "Smith";
	        string company_name = "ProLine Inc.";
	        string address = "623 Bears Ave";
	        string city = "Chicago";
	        string province = "Illinois";
	        string postal_code = "M1M2M1";
	        string country = "Canada";
	        string phone = "777-999-7777";
	        string fax = "777-999-7778";
	        string tax1 = "10.00";
	        string tax2 = "5.78";
	        string tax3 = "4.56";
	        string shipping_cost = "10.00";
	        
	        /********************* Order Line Item Variables *****************************/
	        
	        string[] item_description = new string[]{"Chicago Bears Helmet", "Soldier Field Poster"};
	        string[] item_quantity = new string[]{"1", "1"};
	        string[] item_product_code = new string[]{"CB3450", "SF998S"};
	        string[] item_extended_amount = new string[]{"150.00", "19.79"};
	        
	        
	        
	        
	        
	   	/*****************************************************************************/
	   	/*								             */
	   	/*			Customer Information Option 1			     */
	   	/*									     */
	   	/*****************************************************************************/	        
	        
	        /********************** Customer Information Object **************************/
	        
	        CustInfo customer = new CustInfo();
	        
	        /********************** Set Customer Billing Information **********************/
	        
	        customer.SetBilling (first_name, last_name, company_name, address, city,
	        		     province, postal_code, country, phone, fax, tax1, tax2, 
	        		     tax3, shipping_cost);	        
	        
	        /******************** Set Customer Shipping Information ***********************/
	        		     
	        customer.SetShipping (first_name, last_name, company_name, address, city,
	        		     province, postal_code, country, phone, fax, tax1, tax2, 
	        		     tax3, shipping_cost);	
	        		     
	        /***************************** Order Line Items  ******************************/
	         
	        customer.SetItem (item_description[0], item_quantity[0],	    
	        		  item_product_code[0], item_extended_amount[0]);
	        		  
	        customer.SetItem (item_description[1], item_quantity[1],
	        		  item_product_code[1], item_extended_amount[1]);
	             	
	             	
	             	
            	
            	
	   	/*****************************************************************************/
	   	/*								             */
	   	/*			Customer Information Option 2			     */
	   	/*									     */
	   	/*****************************************************************************/  
	   	
	   	
	   	
	   	/********************** Customer Information Object **************************/
			        
	        CustInfo customer2 = new CustInfo();
            	
            	/******************************* Billing Hashtable ***************************/
            	
            	
            	Hashtable b = new Hashtable();	//billing hashtable

            	b.Add("first_name",first_name);
            	b.Add("last_name", last_name);
            	b.Add("company_name",company_name);
            	b.Add("address", address);
            	b.Add("city", city);
            	b.Add("province", province);
            	b.Add("postal_code", postal_code);
            	b.Add("country", country);
            	b.Add("phone", phone);
            	b.Add("fax", fax);
            	b.Add("tax1",tax1);       //federal tax
            	b.Add("tax2",tax2);        //prov tax
            	b.Add("tax3",tax3);        //luxury tax
            	b.Add("shipping_cost", shipping_cost);   //shipping cost  
            	
            	customer2.SetBilling(b);    
            	
            	/****************************** Shipping Hashtable ***************************/
            	
            	Hashtable s = new Hashtable();	//shipping hashtable
	
            	s.Add("first_name",first_name);
            	s.Add("last_name", last_name);
            	s.Add("company_name", company_name);
            	s.Add("address", address);
            	s.Add("city", city);
            	s.Add("province", province);
            	s.Add("postal_code",postal_code);
            	s.Add("country", country);
            	s.Add("phone", phone);
            	s.Add("fax", fax);
            	s.Add("tax1", tax1);       //federal tax
            	s.Add("tax2", tax2);        //prov tax
            	s.Add("tax3", tax3);        //luxury tax
            	s.Add("shipping_cost", shipping_cost);   //shipping cost
	
            	customer2.SetShipping(s); 
            	
            	/************************* Order Line Item1 Hashtable ************************/

            	Hashtable i1 = new Hashtable();		//item hashtable #1
    
            	i1.Add("name", item_description[0]);
            	i1.Add("quantity", item_quantity[0]);
            	i1.Add("product_code", item_product_code[0]);
            	i1.Add("extended_amount", item_extended_amount[0]);
	
            	customer2.SetItem(i1);			
    
		/************************* Order Line Item2 Hashtable **************************/

            	Hashtable i2 = new Hashtable();		//item hashtable #2
    	
            	i2.Add("name","item2's name");
            	i2.Add("quantity","7");
            	i2.Add("product_code","item2's product code");
            	i2.Add("extended_amount","5.01");
	
            	customer2.SetItem(i2);
            	
            	
            	
            	/*************** Miscellaneous Customer Information Methods *******************/         
	
            	customer.SetEmail("nick@widget.com");
            	customer.SetInstructions("Make it fast!");
        	
 		
            	
	        /********************** Transactional Request Object **************************/

                ReAuth reauth = new ReAuth(order_id, orig_order_id, txn_number, amount, crypt);   
            	
            	/************************ Set Customer Information ***************************/
		            	
            	reauth.SetCustInfo (customer);	            
	
		/**************************** Https Post Request ***************************/
	
	        HttpsPostRequest mpgReq =
	            new HttpsPostRequest(host, store_id, api_token, reauth);
	
		/******************************* Receipt ***********************************/
	
	        try
	        {
	            Receipt receipt = mpgReq.GetReceipt();
	
	         	Console.WriteLine("CardType = " + receipt.GetCardType());
	    		Console.WriteLine("TransAmount = " + receipt.GetTransAmount());
	    		Console.WriteLine("TxnNumber = " + receipt.GetTxnNumber());
	    		Console.WriteLine("ReceiptId = " + receipt.GetReceiptId());
	    		Console.WriteLine("TransType = " + receipt.GetTransType());
	    		Console.WriteLine("ReferenceNum = " + receipt.GetReferenceNum());
	    		Console.WriteLine("ResponseCode = " + receipt.GetResponseCode());
	    		Console.WriteLine("ISO = " + receipt.GetISO());
	    		Console.WriteLine("BankTotals = " + receipt.GetBankTotals());
	    		Console.WriteLine("Message = " + receipt.GetMessage());
	    		Console.WriteLine("AuthCode = " + receipt.GetAuthCode());
	    		Console.WriteLine("Complete = " + receipt.GetComplete());
	    		Console.WriteLine("TransDate = " + receipt.GetTransDate());
	    		Console.WriteLine("TransTime = " + receipt.GetTransTime());
	    		Console.WriteLine("Ticket = " + receipt.GetTicket());
	    		Console.WriteLine("TimedOut = " + receipt.GetTimedOut());
                Console.WriteLine("IsVisaDebit = " + receipt.GetIsVisaDebit());
	
	        }
	        catch (Exception e)
	        {
	            Console.WriteLine(e);
	        }
	  }
				
	} // end TestReauth
}
