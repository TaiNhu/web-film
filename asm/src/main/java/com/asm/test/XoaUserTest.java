package com.asm.test;

import java.util.Arrays;
import java.util.Collection;

import org.junit.Test;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.RunWith;
import org.junit.runner.notification.Failure;
import org.junit.runners.Parameterized;

import com.asm.dao.UserDAO;
import com.asm.model.Users;
cvv
import junit.framework.Assert;

@RunWith(Parameterized.class)
public class XoaUserTest {
	
	// Khởi tạo 3 biến lưu dữ liệu test
	private Users user;
	private Boolean atualResult;
	private Boolean expectResult;
	
	// constructor setup cho parameters
	public XoaUserTest(Users user, Boolean expectResult) {
		this.user = user;
		// insert user method return boolean value as actual result
		this.atualResult = new UserDAO().delete(user.getId());
		this.expectResult = expectResult;
	}
	
	// tập hợp dữ liệu
	@Parameterized.Parameters
	public static Collection input() {
		return Arrays.asList(new Object[][] {
			// id is not null
			{new Users("123", "123", "nhutai@gmail.com", "Nguyen Nhu Tai", false), true}, 
			// id is null
			{new Users(null, "123", "nhutai@gmail.com", "Nguyen Nhu Tai", false), false}
		});
	}
	
	// Trường hợp test
	@Test
	public void testThem() {
		// kết quả thực tế == kết quả mong đợi
		Assert.assertEquals((Boolean) this.atualResult, (Boolean) this.expectResult);
		
	}
	
	
	public static void main(String[] args) {
		Result result = JUnitCore.runClasses(ThemUserVideo.class);
		for(Failure f: result.getFailures()) {
			System.out.println(f.toString());
		}
		System.out.println(result.wasSuccessful());
	}

}
