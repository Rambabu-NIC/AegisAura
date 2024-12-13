using Microsoft.AspNetCore.Mvc;

namespace AegisAura_PG.Controllers
{
    public class Login : Controller
    {
        public IActionResult UserLogin()
        {
            return View();
        }
    }
}
