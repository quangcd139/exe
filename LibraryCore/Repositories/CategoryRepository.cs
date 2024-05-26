﻿using LibraryCore.Models;

namespace LibraryCore.Repositories
{
    public class CategoryRepository: GenericRepository<Category>, ICategoryRepository
    {
        public CategoryRepository(LibraryDBContext context):base(context)
        {

        }
    }
}
