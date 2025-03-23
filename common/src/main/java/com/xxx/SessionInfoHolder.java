package com.xxx;

import com.quincy.sdk.o.User;
import com.xxx.o.Merchant;

public class SessionInfoHolder {
	private final static ThreadLocal<User> USER_HOLDER = new ThreadLocal<User>();
	private final static ThreadLocal<Merchant> MERCHANT_HOLDER = new ThreadLocal<Merchant>();

	public static User getUser() {
		return USER_HOLDER.get();
	}

	public static Merchant getMerchant() {
		return MERCHANT_HOLDER.get();
	}
}