package com.javaproject.nobrand;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaproject.nobrand.goods.domain.Goods;
import com.javaproject.nobrand.goods.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CartController {
	@Autowired
	GoodsService goodsService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(HttpServletRequest request, Model model) {
		
		return "cart/cart";
	}
	@RequestMapping(value = "/cart/id", method = RequestMethod.POST)
	public String cartId(HttpServletRequest request, HttpServletResponse response, Model model) throws ServletException, IOException{
		
		 // JSON 데이터를 읽기 위한 BufferedReader 생성
        BufferedReader reader = request.getReader();

        // JSON 데이터를 저장할 문자열 변수
        StringBuilder jsonContent = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            jsonContent.append(line);
        }

        // JSON 파싱
        JSONObject jsonObject = new JSONObject(jsonContent.toString());
        
        JSONArray arr =jsonObject.getJSONArray("id");
        
        int[] idArr = new int[arr.length()];
        for (int i = 0; i < idArr.length; i++) {
			idArr[i] = arr.getInt(i);
		}
      
     		
     		Goods goods = goodsService.getGoods(idArr[0]);
     		
     		JSONObject json = new JSONObject(goods);
     		
     		request.setAttribute("goodsItem", json);
     		
     		response.setContentType("application/json");
     		response.getWriter().write(json.toString());
		
        
        System.out.println(request.getAttribute("goodsItem"));
       
        
		return "cart/cart";
	}

}
