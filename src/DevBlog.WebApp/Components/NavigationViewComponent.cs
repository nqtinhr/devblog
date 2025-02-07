﻿using DevBlog.Core.SeedWorks;
using DevBlog.WebApp.Models;
using Microsoft.AspNetCore.Mvc;

namespace DevBlog.WebApp.Components
{
    public class NavigationViewComponent : ViewComponent
    {
        private readonly IUnitOfWork _unitOfWork;
        public NavigationViewComponent(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public async Task<IViewComponentResult> InvokeAsync()
        {
            var model = await _unitOfWork.PostCategories.GetAllAsync();
            var navItems = model.Select(x => new NavigationItemViewModel()
            {
                Slug = x.Slug,
                Name = x.Name,
                Children = model.Where(x => x.ParentId == x.Id).Select(i => new NavigationItemViewModel()
                {
                    Name = x.Name,
                    Slug = x.Slug
                }).ToList()
            }).ToList();
            return View(navItems);
        }
    }
}
