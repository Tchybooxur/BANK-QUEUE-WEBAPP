using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PragimBankQueueWebApplicationFormProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TokenQueue"] == null)
            {
                Queue<int> queueTokens = new Queue<int>();
                Session["TokenQueue"] = queueTokens;
            }
        }

        protected void btnPrintToken_Click(object sender, EventArgs e)
        {
            Queue<int> tokenQueue = (Queue<int>)Session["TokenQueue"];
            lblStatus.Text = "There are " + tokenQueue.Count +
                " customers on the queue before you.";

            if (Session["LastTokenUsed"] == null)
            {
                Session["LastTokenUsed"] = 0;
            }

            int NextTokenToUse = (int)Session["LastTokenUsed"] + 1;
            Session["LastTokenUsed"] = NextTokenToUse;
            tokenQueue.Enqueue(NextTokenToUse);
            AddTokenToListBox(tokenQueue);

        }

        private void AddTokenToListBox(Queue<int> tokenQueue)
        {
            ListTokens.Items.Clear();
            foreach (int token in tokenQueue)
            {
                ListTokens.Items.Add(token.ToString());
            }
        }

        private void AttendToCustomer(TextBox text, int counter)
        {
            Queue<int> tokenQueue = (Queue<int>)Session["TokenQueue"];

            if (tokenQueue.Count == 0)
            {
                text.Text = "Customers unavailable";
            }
            else
            {
                int NextCustomer = tokenQueue.Dequeue();
                text.Text = NextCustomer.ToString();
                TextDisplay.Text = "Token Number: " + NextCustomer.ToString() +
                    ", please go to counter " + counter.ToString();
                AddTokenToListBox(tokenQueue);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AttendToCustomer(TextCounter1, 1);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AttendToCustomer(TextCounter2, 2);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            AttendToCustomer(TextCounter3, 3);
        }
    }
}