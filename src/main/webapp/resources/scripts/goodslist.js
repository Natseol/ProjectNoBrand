const goodsBox = document.getElementsByClassName('goods-count-box');
const boxNumber = document.getElementsByClassName('box-number');
const totalPrice = document.getElementsByClassName('total-order');
const cashBox = document.getElementsByClassName('my-result');
const resultPrice = document.getElementsByClassName('result-cost');
const resultPriceBox = document.getElementsByClassName('total-cost');
const deliveryCost = document.getElementsByClassName('delivery-result');
const deliveryCostBox = document.getElementsByClassName('cost-plus');
const keepDelete = document.getElementsByClassName('delete-img');
const deleteSoldOutBtn = document.getElementsByClassName('delete-sold-out');
const deleteSelect = document.getElementById('delete-selector');
const allGoodsCount = document.getElementById('goods');
const allGoodsCountbox = document.getElementById("all-goods-count");
let parent = document.querySelector('.goods-list');


const cookieList = [];
const parsingList = [];
let goodsList = [];
let idList = [];
let selectList = [];



function createGoodsList(name, img, count){
	const topBox = document.createElement('div');
	topBox.innerHTML = '<div class="goods-box">'
+	'<div class="img-box">'
+			img
+		'<input class="img-check" name="check-box" type="checkbox">'
+	'</div>'
+	'<div class="goods-info">'
+		'<div class="mart-name">이마트</div>'
+		'<div class="brand-name">노브랜드</div>'
+		'<div class="goods-name">'
+			name
+		'</div>'
+	'</div>'
+	'<div class="goods-price">'
+		'<div class="goods-count-box">'
+			'<div class="counter">'
+				'<input class="minus" type="button" value="-" oneclick="discount()"/>'
+				'<div id="result" class="count-position">'
+					count
+				'</div>'
+				'<input class="plus" type="button" value="+"/>'
+			'</div>'
+			'<div class="cost-position">'
+				'<div id="cost">'
+				'</div>'
+				'<div class="font-goods-price">원</div>'
+			'</div>'
+		'</div>'
+	'</div>'
+	'<div class="delivery">'
+		'<div class="delivery-text">'
+			'<ul>'
+				'<li class="font-delivery-text">정기배송 가능'
+				'<li class="left-arrow-position"> 청구할인 <img class="left-arrow" alt="" src="resources/images/ico_arrow2.png">'
+			'</ul>'
+		'</div>'
+	'</div>'
+	'<div class="keep-delete">'
+		'<button class="keep">계속담아두기</button>'
+		'<div class="delete-img-box">'
+			'<div class="delete-img">'
+				'<img class="heart-img" alt="" src="resources/images/heart.svg">'
+				'<div class="font-center">|</div>'
+				'<button class="delete-btn"><img class="trashcan" alt="" src="resources/images/trashcan.png"></button>'		
+			'</div>'
+		'</div>'
+	'</div>'
+'</div>';
	document.querySelector(".goods-list").prepend(topBox);
}

function getGoodsIdFromCookie(cookieString) {
	let jsonString = cookieString.split('=')[1];
  
	try {
	  let cookieObject = JSON.parse(jsonString);
  
	  return cookieObject.goodsId;
	} catch (error) {
	  console.error('Error parsing cookie:', error);
	  return null;
	}
  }
  
  function getGoodsCookies() {
	let allCookies = document.cookie;
  
	let cookiesArray = allCookies.split(';');
  
	let goodsCookies = [];
  
	for (let i = 0; i < cookiesArray.length; i++) {
	  let cookie = cookiesArray[i].trim();
  
	  if (cookie.indexOf('goodsId') === 0) {
		goodsCookies.push(cookie);
	  }
	}
  
	return goodsCookies;
  }

  let goodsCookies = getGoodsCookies();
  
  let goodsIds = goodsCookies.map(getGoodsIdFromCookie);

function getCookies(name){
	let value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    return value? value[2] : null;
}

function getCookieList(){
	for (let index = 0; index < goodsCookies.length; index++) {
		cookieName = "goodsId" + getGoodsIdFromCookie(goodsCookies[index]);
		cookieList.push(getCookies(cookieName));

		if(cookieList[index] !== null){
			parsingList.push(JSON.parse(cookieList[index]))
		}
		
	}
	for (let index = 0; index < parsingList.length; index++) {
		idList.push(parsingList[index].goodsId);
	}
}
getCookieList();


fetch("/nobrand/cart/id", {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
  },
  body: JSON.stringify(
    {id:idList}
  ),
}).then((response) => response.json())
  .then(data => {	
	let dataPart = data.goodsObject;
	let listCount = 0;
	for (let index = 0; index < dataPart.length; index++) {
		if(dataPart[index] !== null){
			createGoodsList(dataPart[index].name, dataPart[index].imgAddress, parsingList[index].goodsCount);
			document.getElementById('cost').innerHTML = dataPart[index].price * parsingList[index].goodsCount;
			listCount++;
			allGoodsCount.innerHTML = listCount;
			console.log(listCount)
			allGoodsCountbox.innerHTML = listCount;
		}
	}
	

	function add(){
		for (let index = 0; index < goodsBox.length; index++) {
			let countBox = goodsBox[index].children[0];
			const price = goodsBox[index].children[1].children[0];
			addEvent(countBox, price);
		}
	}
	
	function minus(){
		for (let index = 0; index < goodsBox.length; index++) {
				let countBox = goodsBox[index].children[0];
				const price = goodsBox[index].children[1].children[0];
				minusEvent(countBox, price);
		}
	}
	
	function addEvent(count, price) {
		let countGoods = count.children[1].textContent;
		const goodsPrice = [];
		goodsPrice.push(price.textContent/countGoods);
		count.children[2].addEventListener('click', function(){
			countGoods++;
			count.children[1].textContent = countGoods;
			price.textContent = countGoods*(goodsPrice[0]);
			sumEvent();
			sumResult()
		})
	}
	
	function minusEvent(count, price) {
		let countGoods = count.children[1].textContent;
		const goodsPrice = [];
		goodsPrice.push(price.textContent/countGoods);
		count.children[0].addEventListener('click', function(){
			countGoods = count.children[1].textContent;
			if(countGoods > 1){
				countGoods--;
			}
			else{
				countGoods = 1;
			}
			count.children[1].textContent = countGoods;
			price.textContent = countGoods*(goodsPrice[0]);
			sumEvent();
			sumResult()
		})
	}
	
	function sumEvent(){
		let sum = 0;
		for (let index = 0; index < goodsBox.length; index++) {
			const price = goodsBox[index].children[1].children[0];
			sum += parseInt(price.textContent);
		}
		let total = totalPrice[0];
		let cash  = cashBox[0];
		total.textContent = sum;
		cash.textContent = sum+"원";
	}
	
	function sumResult(){
		let sum = 0;
		for (let index = 0; index < goodsBox.length; index++) {
			const price = goodsBox[index].children[1].children[0];
			sum += parseInt(price.textContent);
		}
		let result1 = resultPrice[0];
		let result2 = resultPriceBox[0];
		let delivery1 = deliveryCost[0];
		let delivery2 = deliveryCostBox[0];
		if (sum > 40000) {
			result1.textContent = sum+"원";
			result2.textContent = sum;
			delivery1.textContent = "+"+0+"원";
			delivery2.textContent = 0+"원";
		}
		else{
			result1.textContent = sum+3000+"원";
			result2.textContent = sum+3000;
			delivery1.textContent = "+"+3000+"원";
			delivery2.textContent = 3000+"원";
		}
	}

	function deleteCookie(){
		for (let index = 0; index < idList.length; index++) {
			let id = keepDelete[index].children[2];
			id.addEventListener('click', function(){
				document.cookie = "goodsId"+idList[index] + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
				location.reload(true);
			});
		} 
		
	}
	
	function deleteSoldOut(){
		deleteSoldOutBtn[0].addEventListener('click', function(){
			for (let index = 0; index < dataPart.length; index++) {
				if(dataPart[index].goodsCount == 0){
					document.cookie = "goodsId"+idList[index] + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
					location.reload(true);
				}
			}
			alert("품절된 상품이 삭제되었습니다.");
		})
	}
	
	add();
	minus();
	sumEvent();
	sumResult();
	deleteCookie();
	deleteSoldOut();
})
.catch(error => {
	console.error('페이지 가져오기 오류:', error);
})
