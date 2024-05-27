using Microsoft.AspNetCore.SignalR;

namespace Library
{
    public class ChatHub : Hub
    {
        public override async Task OnConnectedAsync()
        {
            await Clients.All.SendAsync("ReceiveMessage", $"{Context.ConnectionId} has connected");
        }

        public async Task SendMessage(string user, string message)
        {
            //await Clients.All.SendAsync("ReceiveMessage", user+":"+ message);
            await Clients.All.SendAsync("ReceiveMessage", user+":"+ message);
        }
    }
}
