package com.asm.test;

import static org.junit.Assert.assertTrue;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import com.asm.dao.VideoDAO;
import com.asm.model.Videos;

@RunWith(Parameterized.class)

public class SearchTest {
    /**
     * Khởi tạo 3 biến:
     * - biến đầu vào
     * - biến kết quả thực tế
     * - biến kết quả mong đợi
     */
    private String keyword;
    private List<Videos> actualResult;
    private Boolean expectResult;


    //constructor setup cho parameters
    public SearchTest(String keyword, Boolean expectResult) {
        this.keyword = keyword;
        VideoDAO vd = new VideoDAO();
        List<Videos> videos = vd.findAll(this.keyword, 12 * (Integer.valueOf(1)) - 11,
                12 * (Integer.valueOf(1)) - 11 + 11);
        this.actualResult  = videos;
        this.expectResult = expectResult;
    }


    // Tập hợp dữ liệu
    @Parameterized.Parameters
    public static Collection input() {
        return Arrays.asList(new Object[][] {
            {"", true},
            {"13", true},
            {"Nhạc", true},
            {"64732", false}
        });
    }


    // Thực hiện các bước test
    @Test
    public void tesKeyword() {
        Boolean isFull = true;
        System.out.println(this.actualResult.size());
        if(this.actualResult.size() == 0) {
            isFull = false;
        }
        Assert.assertEquals(isFull, expectResult);
    }

}