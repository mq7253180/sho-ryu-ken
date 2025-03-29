package com.xxx;

import com.xxx.o.Merchant;
import com.xxx.o.UserExt;
import com.quincy.sdk.AuthHelper;
import com.quincy.sdk.o.User;

public class SessionInfoHolder {
	private final static ThreadLocal<User> USER_HOLDER = new ThreadLocal<User>();
	private final static ThreadLocal<Merchant> MERCHANT_HOLDER = new ThreadLocal<Merchant>();

	public static User getUser() {
		User user = USER_HOLDER.get();
		if(user==null) {
			user = (User)AuthHelper.getUser();
			USER_HOLDER.set(user);
		}
		return user;
	}

	public static Merchant getMerchant() {
		Merchant merchant = MERCHANT_HOLDER.get();
		if(merchant==null) {
			UserExt userExt = (UserExt)AuthHelper.getUserExt();
			merchant = userExt.getSelectedMerchant();
			MERCHANT_HOLDER.set(merchant);
		}
		return merchant;
	}

	public static void setUser(User user) {
		USER_HOLDER.set(user);
	}

	public static void setMerchant(Merchant merchant) {
		MERCHANT_HOLDER.set(merchant);
	}
}