using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class ChatBot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnAnswer_Click(object sender, EventArgs e)
        {
            string question = txtQuestion.Text;

            if (string.IsNullOrWhiteSpace(question))
            {
                lblAnswer.Text = "Please enter a question.";
                return;
            }

            GroqChatbot chatbot = new GroqChatbot();

            string answer = await chatbot.AskGroq(question);

            lblAnswer.Text = answer;
            txtQuestion.Text = "";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}