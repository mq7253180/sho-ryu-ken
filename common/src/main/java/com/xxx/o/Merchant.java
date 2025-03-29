package com.xxx.o;

import java.io.Serializable;

public class Merchant implements Serializable {
	private static final long serialVersionUID = 1555113516707591033L;
	private Long id;
	private Long shardingKey;
	private String name;
	private String enName;
	private String addr;
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
	public String getEnName() {
		return enName;
	}
	public void setEnName(String enName) {
		this.enName = enName;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
}