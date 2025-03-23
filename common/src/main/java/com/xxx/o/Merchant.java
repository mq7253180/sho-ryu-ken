package com.xxx.o;

import java.io.Serializable;
import java.util.List;

public class Merchant implements Serializable {
	private static final long serialVersionUID = 1555113516707591033L;
	private Long id;
	private Long shardingKey;
	private String name;
	private String addr;
	private Merchant parent;
	private List<Merchant> children;
	private List<Table> tables;
	private List<Sku> skus;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getShardingKey() {
		return shardingKey;
	}
	public void setShardingKey(Long shardingKey) {
		this.shardingKey = shardingKey;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Merchant getParent() {
		return parent;
	}
	public void setParent(Merchant parent) {
		this.parent = parent;
	}
	public List<Merchant> getChildren() {
		return children;
	}
	public void setChildren(List<Merchant> children) {
		this.children = children;
	}
	public List<Table> getTables() {
		return tables;
	}
	public void setTables(List<Table> tables) {
		this.tables = tables;
	}
	public List<Sku> getSkus() {
		return skus;
	}
	public void setSkus(List<Sku> skus) {
		this.skus = skus;
	}
}