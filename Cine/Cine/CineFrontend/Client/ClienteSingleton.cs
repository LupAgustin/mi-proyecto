using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineFrontend.Client
{
    public class ClienteSinglenton
    {
        private static ClienteSinglenton instance;
        private HttpClient client;

        private ClienteSinglenton()
        {
            client = new HttpClient();
        }

        public static ClienteSinglenton GetInstance()
        {
            if (instance == null)
                instance = new ClienteSinglenton();

            return instance;
        }


        public async Task<string> GetAsync(string urlGet)
        {
            var result = await client.GetAsync(urlGet);
            var content = "";
            if (result.IsSuccessStatusCode)
            {
                content = await result.Content.ReadAsStringAsync();
            }
            return content;
        }

        public async Task<string> PostAsync(string urlPost, string dataJson)
        {
            StringContent content = new StringContent(dataJson, Encoding.UTF8, "application/json");
            var result = await client.PostAsync(urlPost, content);

            var response = "";

            if (result.IsSuccessStatusCode)
            {
                //acà hay q trabjar los case dependiendo d q codigo 
                response = await result.Content.ReadAsStringAsync();

            }
            return response;
        }

        public async Task<string> DeleteAsync(string urlGet)
        {
            var result = await client.DeleteAsync(urlGet);
            var content = "";
            if (result.IsSuccessStatusCode)
            {
                content = await result.Content.ReadAsStringAsync();
            }
            return content;
        }


    }
}
