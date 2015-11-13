using MyRealtyWeb.Data.EPayModel;
using MyRealtyWeb.ESelectPayment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWebConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            MRWPurchase purch = new MRWPurchase();
            RequestModel model=new RequestModel();
            model.Amount =Convert.ToDecimal("100.00");
            model.PAN = "4242424242424242";
            model.ExpDate = Convert.ToInt32("1612");
            model.Crypt = "7";
            string pan = model.PAN;// "4242424242424242";
            string expdate = model.ExpDate.ToString();//"0812";
            string crypt = model.Crypt;// "7";
            var receipt=  purch.BasicPurchase(model);
            Console.WriteLine("CardType = " + receipt.CardType);
            Console.WriteLine("TransAmount = " + receipt.TransAmount);
            Console.WriteLine("TxnNumber = " + receipt.TxnNumber);
            Console.WriteLine("ReceiptId = " + receipt.ReceiptId);
            Console.WriteLine("TransType = " + receipt.TransType);
            Console.WriteLine("ReferenceNum = " + receipt.ReferenceNum);
            Console.WriteLine("ResponseCode = " + receipt.ResponseCode);
            Console.WriteLine("ISO = " + receipt.ISO);
            Console.WriteLine("BankTotals = " + receipt.BankTotals);
            Console.WriteLine("Message = " + receipt.Message);
            Console.WriteLine("AuthCode = " + receipt.AuthCode);
            Console.WriteLine("Complete = " + receipt.Complete);
            Console.WriteLine("TransDate = " + receipt.TransDate);
            Console.WriteLine("TransTime = " + receipt.TransTime);
            Console.WriteLine("Ticket = " + receipt.Ticket);
            Console.WriteLine("TimedOut = " + receipt.TimedOut);
            Console.WriteLine("IsVisaDebit = " + receipt.IsVisaDebit);

            Console.ReadKey();
        }
    }
}
