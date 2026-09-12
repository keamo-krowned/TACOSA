using System;
using System.Configuration;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace TACOSA
{
    public class GroqChatbot
    {
        private readonly string apiKey;

        public GroqChatbot()
        {
            apiKey = ConfigurationManager.AppSettings["GroqApiKey"];
        }

        public async Task<string> AskGroq(string question)
        {
            string apiUrl = "https://api.groq.com/openai/v1/chat/completions";

            string systemMessage =
                "You are the official TACOSA AI Assistant. " +
                "TACOSA is a South African tourism booking platform to book accommodations and attractions in one place. " +
                "Answer questions about TACOSA clearly and politely. " +
                "Do not invent prices, bookings, accommodation, attractions, " +
                "payment methods, cancellation policies, or other TACOSA information. " +
                "If you do not know something, say that the information is not available. " +
                "Do not claim that you have created, changed, or cancelled a booking." +
                "Only answer booking related questions, if asked something not related to bookings say you can only answer questions based on TACOSA";

            var requestData = new
            {
                model = "openai/gpt-oss-20b",
                messages = new[]
                {
                    new
                    {
                        role = "system",
                        content = systemMessage
                    },
                    new
                    {
                        role = "user",
                        content = question
                    }
                }
            };

            JavaScriptSerializer serializer = new JavaScriptSerializer();

            string json = serializer.Serialize(requestData);

            using (HttpClient client = new HttpClient())
            {
                client.DefaultRequestHeaders.Add(
                    "Authorization",
                    "Bearer " + apiKey
                );

                StringContent content = new StringContent(
                    json,
                    Encoding.UTF8,
                    "application/json"
                );

                HttpResponseMessage response =
                    await client.PostAsync(apiUrl, content);

                string responseJson =
                    await response.Content.ReadAsStringAsync();

                if (!response.IsSuccessStatusCode)
                {
                    return "Groq Error: " + response.StatusCode +
                    " - " + responseJson;
                }

                var responseData =
                    serializer.DeserializeObject(responseJson);

                var data =
                    (System.Collections.Generic.Dictionary<string, object>)responseData;

                var choices =
                    (object[])data["choices"];

                var firstChoice =
                    (System.Collections.Generic.Dictionary<string, object>)choices[0];

                var message =
                    (System.Collections.Generic.Dictionary<string, object>)firstChoice["message"];

                string answer =
                    message["content"].ToString();

                return answer;
            }
        }
    }
}