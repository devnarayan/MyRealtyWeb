using Moneris;
using MyRealtyWeb.Data.EPayModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.ESelectPayment
{
    public interface IMRWPurchase{
        ReceiptModel BasicPurchase(RequestModel model);
    }
    public class MRWPurchase:IMRWPurchase
    {
        public ReceiptModel BasicPurchase(RequestModel model)
        {
            OrderInfo oinfo = new OrderInfo();   

            string host = AuthInfo.Host;
            string store_id = AuthInfo.StoreID;
            string api_token = AuthInfo.APIToken;
            string order_id = oinfo.GenerateOrderID();// "Test_P_0333";        
            string amount = model.Amount.Value.ToString();  
            string pan = model.PAN;// "4242424242424242";  
            string expdate = model.ExpDate.ToString();//"0812";
            string crypt = model.Crypt;// "7";
            //string status = "true";

            /* Status Check Example */
            //  HttpsPostRequest mpgReq =
            //    new HttpsPostRequest(host, store_id, api_token, status,
            //               new Purchase(order_id, amount, pan, expdate, crypt));

            Purchase purchase = new Purchase(order_id, amount, pan, expdate, crypt);

            //purchase.SetDynamicDescriptor("2134565");

            HttpsPostRequest mpgReq =
                  new HttpsPostRequest(host, store_id, api_token, purchase);
            ReceiptModel rcptModel = new ReceiptModel();
            try
            {
                Receipt receipt = mpgReq.GetReceipt();

                rcptModel.CardType = receipt.GetCardType();
                rcptModel.TransAmount =receipt.GetTransAmount();
                rcptModel.TxnNumber = receipt.GetTxnNumber();
                rcptModel.ReceiptId = receipt.GetReceiptId();
                rcptModel.TransType = receipt.GetTransType();
                rcptModel.ReferenceNum = receipt.GetReferenceNum();
                rcptModel.ResponseCode = receipt.GetResponseCode();
                rcptModel.ISO = receipt.GetISO();
                rcptModel.BankTotals = receipt.GetBankTotals();
                rcptModel.Message = receipt.GetMessage();
                rcptModel.AuthCode = receipt.GetAuthCode();
                rcptModel.Complete = receipt.GetComplete();
                rcptModel.TransDate = receipt.GetTransDate();
                rcptModel.TransTime = receipt.GetTransTime();
                rcptModel.Ticket = receipt.GetTicket();
                rcptModel.TimedOut = receipt.GetTimedOut();
                rcptModel.IsVisaDebit = receipt.GetIsVisaDebit();
                //Console.WriteLine("StatusCode = " + receipt.GetStatusCode());
                //Console.WriteLine("StatusMessage = " + receipt.GetStatusMessage());
                return rcptModel;

            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return null;
            }
        }
    }
}
