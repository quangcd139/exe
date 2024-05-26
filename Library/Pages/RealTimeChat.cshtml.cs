using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Library.Pages
{
    public class RealTimeChatModel : PageModel
    {
        public IActionResult OnGet()
        {
            return Page();
        }

    }
}
