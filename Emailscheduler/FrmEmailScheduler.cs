using MyRealtyWeb.Data.Access;
using MyRealtyWeb.Data.Access.CentralSite;
using MyRealtyWeb.Data.DataModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Emailscheduler
{
    public partial class FrmEmailScheduler : Form
    {
        public FrmEmailScheduler()
        {
            InitializeComponent();
        }
        private void btnStart_Click(object sender, EventArgs e)
        {
            SenDripTemplate();
        }
        public void SenDripTemplate()
        {
            try
            {
                lblerror.Text = "Email schedular started on " + DateTime.Now;
                ClientBroadCastingService clientBroadCastingService = new ClientBroadCastingService();
                DripTempaleService dripTempaleService = new DripTempaleService();
                List<ClientCampaignModel> clientCampaign = new List<ClientCampaignModel>();
                ImageServices imageServices = new ImageServices();
                clientCampaign = GetClientLists();
                for (int i = 0; i < clientCampaign.Count; i++)
                {
                    var clientDetail = clientBroadCastingService.GetClientDetail(clientCampaign[i].ClientUserId).ToList();
                    var agentDetail = imageServices.GetAboutMe(clientCampaign[i].UserId).ToList();
                    if (clientCampaign[i].DateStamp.Value.Month == DateTime.Now.Month && clientCampaign[i].DateStamp.Value.Year == DateTime.Now.Year && clientCampaign[i].DateStamp.Value.Day == DateTime.Now.Day)
                    {
                        if (clientCampaign[i].Status == null)
                        {
                            var template = dripTempaleService.GetDripTemplateHtmlParticularId(clientCampaign[i].TemplateHtmlId);
                            var enote = dripTempaleService.GetParticularDripTemplates(clientCampaign[i].EnoteTemplateId);
                            template = template.Replace("enote header", enote.TemplateSubject);
                            template = template.Replace("enote description", enote.TemplateDescription);
                            template = template.Replace("agent name", agentDetail[0].FirstName + " " + agentDetail[0].LastName);
                            template = template.Replace("agent address", agentDetail[0].Address);
                            template = template.Replace("agent phone", agentDetail[0].Phone);
                            template = template.Replace("agent cell", agentDetail[0].Cell);
                            template = template.Replace("agent email", agentDetail[0].Email);
                            template = template.Replace("agent website", agentDetail[0].WebsiteName);
                            if (string.IsNullOrEmpty(agentDetail[0].AboutLogo))
                            {
                                template = template.Replace("aboutlogo", "http://myrealtyweb.com/DripTemplateHtml/photo.jpg");
                            }
                            else
                            {
                                template = template.Replace("aboutlogo", "http://myrealtyweb.com/Aboutmelogo/" + agentDetail[0].AboutLogo);
                            }
                            template = template.Replace("aboutlogo", "" + agentDetail[0].AboutLogo);
                            SendEmail(clientDetail[0].PrimaryEmail, agentDetail[0].FirstName + " " + agentDetail[0].LastName + "@myrealtyweb.com", enote.TemplateHeader, template);
                            lblMessage.Text = "Email has been sent to " + clientDetail[0].PrimaryEmail + " successfully on " + DateTime.Now;
                            dripTempaleService.UpdateDripStatus(clientCampaign[i].ClientCampaignId, 1);
                        }
                    }
                    else
                    {
                        lblMessage.Text = "No email sent right now calculated date is " + DateTime.Now;
                    }

                }
            }
            catch (Exception ex)
            {
                Helper hp = new Helper();
                hp.LogException(ex);
                lblMessage.Text = ex.Message;
            }
        }
        public void SaveToEmailStatus(SentEmailModel emailStatusModel)
        {
             DripTempaleService dripTempaleService = new DripTempaleService();
             dripTempaleService.AddEmailStatus(emailStatusModel);
        }
        public string GetStartDate(Int64 clientCampaignId)
        {
            DripTempaleService dripTemplate = new DripTempaleService();
            var model = dripTemplate.GetStartDate(clientCampaignId);
            if (model == null)
            {
                return Convert.ToString(dripTemplate.GetClientCampaign().Where(p => p.ClientCampaignId == clientCampaignId).ToList()[0].DateStamp);
            }
            else
            {
                return Convert.ToString(model.SentDate);
            }
        }
        public List<ClientCampaignModel> GetClientLists()
        {
            List<ClientCampaignModel> clientCampaign = new List<ClientCampaignModel>();
            DripTempaleService dripTemplate = new DripTempaleService();
            clientCampaign = dripTemplate.GetClientCampaign();
            return clientCampaign.ToList();
        }
        public string SendEmail(string p_MailTo, string p_MailFrom, string p_Subject, string p_Body)
        {
            MailMessage mail1 = new MailMessage();
            mail1.To.Add(p_MailTo);
            mail1.Bcc.Add("satinderhundal1983@gmail.com");
            mail1.Bcc.Add("jaswantvv@gmail.com");
            mail1.From = new MailAddress(p_MailFrom);
            mail1.Subject = p_Subject;
            mail1.Body = p_Body;
            mail1.IsBodyHtml = true;
            SmtpClient smtp1 = new SmtpClient();
            smtp1.Host = "MYREALTYWEB.COM";
            smtp1.Credentials = new System.Net.NetworkCredential("info@MYREALTYWEB.COM", "New009@");
            //smtp1.EnableSsl = true;
            smtp1.Send(mail1);
            return "success";
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            SenDripTemplate();
            SendOptInEmail();
            SendScheduleEmail();
        }
        public string GetTemplateHtml(Int64 htmlTemplateId)
        {
            DripTempaleService dripTempaleService = new DripTempaleService();
            return dripTempaleService.GetDripTemplateHtmlParticularId(htmlTemplateId);
        }
        public string SendOptInEmail()
        {
            
            ClientOptionInOutService clientOptionInOutService = new ClientOptionInOutService();
            ImageServices imageServices=new ImageServices();
            var modal = clientOptionInOutService.GetClientsForRequestOpt();
            var mailInOutTemplate = clientOptionInOutService.GetMailInoutTemplate();        
            string domainName=ConfigurationManager.AppSettings["domainname"];
            foreach (var m in modal)
            {
                if(clientOptionInOutService.CheckNextOptInEmail(DateTime.Now,m.LoginUserId) == true)
                {
                    var agentDetail = imageServices.GetAboutMe(m.UserId).ToList()[0];
                    mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("agentname", agentDetail.FirstName + " " + agentDetail.LastName);
                    mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("agentaddress", agentDetail.Address);
                    mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("agentemail", agentDetail.Email);
                    mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("agentphone",agentDetail.Phone);
                    mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("agentcell", agentDetail.Cell);
                    mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("agentwebsite", agentDetail.WebsiteName);
                    mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("?clientid", "?clientid="+m.LoginUserId+"&emaildd=" + m.ClientBroadCastingId);
                    mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("clientname", m.FirstName + " " + m.LastName);
                    if (string.IsNullOrEmpty(agentDetail.AboutLogo))
                            {
                                mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("agentimage", "http://myrealtyweb.com/DripTemplateHtml/photo.jpg");
                            }
                            else
                            {
                                mailInOutTemplate.MailInOutTemplate1 = mailInOutTemplate.MailInOutTemplate1.Replace("agentimage", "http://myrealtyweb.com/Aboutmelogo/" + agentDetail.AboutLogo);
                            }
                    string optInHtml = mailInOutTemplate.MailInOutTemplate1;
                    SendEmail(m.PrimaryEmail, "Info@Myrealtyweb.com", "Request For Your Permission", optInHtml);
                    clientOptionInOutService.ChangeStatusToSentMail(int.Parse(m.ClientBroadCastingId.ToString()));
                }
            }
            return "success";
        }    
        public void SendScheduleEmail()
        {
            ClientBroadCastingService clientBroadCastingService = new ClientBroadCastingService();
            var q = clientBroadCastingService.GetEmailScheduler();
            foreach(var m in q)
            {
                if (DateTime.Now.Day == m.DateStamp.Value.Day && DateTime.Now.Month == m.DateStamp.Value.Month && DateTime.Now.Year == m.DateStamp.Value.Year)
                {
                    if (m.Status != 1)
                    {
                        string time = DateTime.Now.ToString("hh:mm");
                        if (time == "18:30")
                        {
                            SendEmail(m.MailTo, m.MailFrom, m.Title, m.Template);
                            clientBroadCastingService.ChangeStatusMailSchedule(m.MailScheduleId);
                            lblMessage.Text = "Schedule email has been sent";
                        }
                    }
                }
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
            SendScheduleEmail();
            SendOptInEmail();
        }
    }
}
