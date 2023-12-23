package thuan.com.fa.demomvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import thuan.com.fa.demomvc.entity.Category;
import thuan.com.fa.demomvc.model.CategoryProduct;

public interface CategoryRepositoryImpl extends PagingAndSortingRepository<Category, Long> {

	@Query("SELECT new thuan.com.fa.demomvc.model.CategoryProduct(c.id, c.name, p.name, p.ngaySanXuat) FROM Category c LEFT JOIN Product p ON c = p.category")
	public List<CategoryProduct> getCategoryWithProduct();

}
