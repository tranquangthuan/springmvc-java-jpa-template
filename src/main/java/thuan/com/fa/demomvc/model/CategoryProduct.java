package thuan.com.fa.demomvc.model;

import java.time.LocalDate;

public class CategoryProduct {

	private long categoryId;
	private String categoryName;
	private String productName;
	private LocalDate ngaySanXuat;

	public CategoryProduct() {
		super();
	}

	public CategoryProduct(long categoryId, String categoryName, String productName, LocalDate ngaySanXuat) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.productName = productName;
		this.ngaySanXuat = ngaySanXuat;
	}

	public long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public LocalDate getNgaySanXuat() {
		return ngaySanXuat;
	}

	public void setNgaySanXuat(LocalDate ngaySanXuat) {
		this.ngaySanXuat = ngaySanXuat;
	}

	@Override
	public String toString() {
		return "CategoryProduct [categoryId=" + categoryId + ", categoryName=" + categoryName + ", productName="
				+ productName + ", ngaySanXuat=" + ngaySanXuat + "]";
	}

}
