package com.cba.MiPrimerTrabajo.Services;

import com.cba.MiPrimerTrabajo.Entities.Category;

public interface CategoryService {
    Iterable<Category> listAllCategories();

    void saveCategory(Category category);

    Category getCategory(Integer id);

    void deleteCategory(Integer id);
}