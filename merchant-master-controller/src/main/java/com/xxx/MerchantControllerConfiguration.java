package com.xxx;

import java.text.MessageFormat;
import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.quincy.auth.entity.Permission;
import com.quincy.auth.entity.Role;
import com.quincy.sdk.AuthServerActions;
import com.quincy.sdk.o.Menu;
import com.quincy.sdk.o.User;

@Configuration
public class MerchantControllerConfiguration {
	@Bean
	public AuthServerActions authActions() {
		return new AuthServerActions() {
			@Override
			public Object userExt(User user) {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public void sms(String mobilePhone, String vcode, int expireMinuts) {
				System.out.println(MessageFormat.format("已通过阿里云短信接口向{0}发送验证码: {1}, 失效时间{2}分钟", mobilePhone, new String(vcode), expireMinuts));
			}

			@Override
			public List<Role> findRoles(Long userId) {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public List<Permission> findPermissions(Long userId) {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public List<Menu> findMenus(Long userId) {
				// TODO Auto-generated method stub
				return null;
			}
		};
	}
}