package com.javaproject.nobrand;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;

@Controller
public class RegistGoddsController {
	@Autowired
	GoodsDAO goodsDAO;

	@RequestMapping(value = "/registgoods", method = RequestMethod.GET)
	public String registGoods(Model model) {
		return "registgoods/registgoods";
	}
	
	@RequestMapping(value="/registgoods", method=RequestMethod.POST)
	public String registGoodsPost(@RequestParam Map<String, String> map, HttpSession session) {
		goodsDAO.add(new Goods(
				map.get("goods-name"),
				Integer.parseInt(map.get("goods-price")),
				map.get("goods-kind"),
				map.get("goods-options"),
				Integer.parseInt(map.get("goods-cellcount")),
				map.get("goods-delivery"),
				map.get("goods-content"),
				map.get("goods-info")
				));
		return "redirect:/";		
	}
}
