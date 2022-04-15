package com.asm.test;

import java.util.Arrays;
import java.util.Collection;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import com.asm.dao.UserDAO;
import com.asm.model.Users;

import junit.framework.Assert;

@RunWith(Parameterized.class)
public class SuaUserTest {
	private Users user;
	private Boolean atualResult;
	private Boolean expectResult;
	
	public SuaUserTest(Users user, Boolean expectResult) {
		this.user = user;
		this.atualResult = new UserDAO().update(user);
		this.expectResult = expectResult;
	}
	
	@Parameterized.Parameters
	public static Collection input() {
		return Arrays.asList(new Object[][] {
			// id is not null
			{new Users("123", "123", "nhutai@gmail.com", "Tai", false), true}, 
			// id is null
			{new Users(null, "123", "nhutai@gmail.com", "Nguyen Nhu Tai", false), false}
		});
	}
	
	@Test
	public void updateTest() {
		// kết quả thực tế == kết quả mong đợi
		Assert.assertEquals((Boolean) this.atualResult, (Boolean) this.expectResult);
	}

}
