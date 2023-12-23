package thuan.com.fa.demomvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import thuan.com.fa.demomvc.entity.Category;
import thuan.com.fa.demomvc.model.CategoryProduct;
import thuan.com.fa.demomvc.repository.CategoryRepositoryImpl;

@Service
@Transactional
public class CategoryServiceImpl {

	@Autowired
	private CategoryRepositoryImpl categoryRepositoryImpl;

	public List<Category> findAll() {
		long total = categoryRepositoryImpl.count();
		if (total == 0) {
			total = 1;
		}
		List<Category> content = categoryRepositoryImpl.findAll(PageRequest.of(0, (int) total)).getContent();
		return content;
	}

	public void saveOrUpdate(Category category) {
		categoryRepositoryImpl.save(category);
	}

	public void delete(long id) {
		Category Category = findById(id);
		if (Category != null) {
			categoryRepositoryImpl.delete(Category);
		}
	}

	public Category findById(long id) {
		return categoryRepositoryImpl.findById(id).orElse(null);
	}

	public List<CategoryProduct> getCategoryWithProduct() {
		return categoryRepositoryImpl.getCategoryWithProduct();
	}
}
