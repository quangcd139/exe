﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using LibraryCore.Models;
using LibraryCore.UnitOfWork;

namespace Library.Pages
{
    public class LoginModel : PageModel
    {
        private readonly IUnitOfWork _unitOfWork;

        public LoginModel(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public User User { get; set; } = default!;


        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            ModelState.Remove("User.Fullname");
            ModelState.Remove("User.Mail");
            ModelState.Remove("User.UserRole");
            if (!ModelState.IsValid)
            {
                return Page();
            }

            var user = _unitOfWork.UserRepository.GetAll().FirstOrDefault(x => x.Username.Equals(User.Username) && x.Password.Equals(User.Password));
            if (user == null)
            {
                ModelState.AddModelError("wrong","Wrong username or password!");
                return Page();
            }

            if (user.Status == false)
            {
                ModelState.AddModelError("wrong", "Access denied!");
                return Page();

            }
            HttpContext.Session.SetString("username",user.Username);
            HttpContext.Session.SetInt32("userid",user.UserId);
            HttpContext.Session.SetString("role",user.UserRole);
            HttpContext.Session.SetInt32("cartcount",_unitOfWork.CartRepository.FindByUserId(user.UserId).Count);

            return RedirectToPage("Index");
        }
    }
}
