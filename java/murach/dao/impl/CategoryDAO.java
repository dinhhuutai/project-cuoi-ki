package murach.dao.impl;

import java.util.List;

import murach.dao.ICategoryDAO;
import murach.mapper.CategoryMapper;
import murach.model.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {
		
	public List<CategoryModel> findAll() {

		String sql = "select * from category";
		
		return query(sql, new CategoryMapper());
	}

	public CategoryModel findOne(long id) {
		String sql = "select * from category where id = ?";

		List<CategoryModel> category = query(sql, new CategoryMapper(), id);
		
		return category.isEmpty() ? null : category.get(0);
	}

	public CategoryModel findOneByCode(String code) {
		String sql = "select * from category where code = ?";

		List<CategoryModel> category = query(sql, new CategoryMapper(), code);
		
		return category.isEmpty() ? null : category.get(0);
	}
	
}
