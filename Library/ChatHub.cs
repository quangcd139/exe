using Microsoft.AspNetCore.SignalR;

namespace Library
{
    public class ChatHub : Hub
    {
        //public override async Task OnConnectedAsync()
        //{
        //    await Clients.All.SendAsync("ReceiveMessage", $"{Context.ConnectionId} has connected");
        //}

        public async Task SendMessage(string message)
        {
            //await Clients.All.SendAsync("ReceiveMessage", user+":"+ message);
            string key = "zassk-84MLdFrvDSVzQX7ASMC7T3BlbkFJCsqXQASt31cg6C5FM3es";
            await Clients.All.SendAsync("ReceiveMessage", message);
        }
    }
}
