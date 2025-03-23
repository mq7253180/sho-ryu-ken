package com.xxx.o;

import java.io.Serializable;
import java.util.List;

public class Sku implements Serializable {
	private static final long serialVersionUID = 2386346488935941481L;
	private Long id;
	private String name;
	private int type;
	private List<SkuAttr> attrs;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public List<SkuAttr> getAttrs() {
		return attrs;
	}
	public void setAttrs(List<SkuAttr> attrs) {
		this.attrs = attrs;
	}
}
