const imgFrame = document.getElementsByClassName('img-frame');
const goodsName = document.getElementsByClassName('goods-name');
const goodsNameInfo = document.getElementsByClassName('goods-name-info');
const goodsPrice = document.getElementsByClassName('goods-price');
const standardPrice = document.getElementsByClassName('standard-price');
const totalVolum = document.getElementsByClassName('total-volum');
const goodsMade = document.getElementsByClassName('goods-made');
const totalOrder = document.getElementsByClassName('total-order');
const totalOrderSecond = document.getElementsByClassName('total-order-second');
const contentElem = document.getElementsByClassName('goods-img-box-content');
const goodsBoxElem = document.getElementsByClassName('calculator');
const deletButton = document.getElementById('delet-goods');

const user = "";

function getParameter(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function isGoods(){
    const urlPrams = getParameter("goodsId");
	if(urlPrams.indexOf[0] == null){
	}
	else{
		location.replace("http://localhost/nobrand/");
		alert("등록되어있지 않은 상품입니다.");
	}
}

function createCookie( goodsIdJ, exdays){
    let d = new Date();
    let goodsCountJ = goodsBoxElem[0].children[0].children[1].textContent;
    d.setTime(d.getTime() + (exdays*24*60*60*1000));

    let expires = "expires="+d.toUTCString();

    let cookieContent = {goodsId:goodsIdJ, goodsCount:goodsCountJ};

    document.cookie = "goodsId"+ goodsIdJ + "=" + JSON.stringify(cookieContent); + "; " + expires;
    alert("상품을 장바구니에 담았습니다.");
}

function dataInput({imgAddress ,name, price, standard, volum, info, content}){
    imgFrame[0].innerHTML = imgAddress;
    goodsName[0].innerHTML = name;
    goodsNameInfo[0].innerHTML = name;
    goodsPrice[0].innerHTML = price;
    totalOrder[0].innerHTML = price;
    totalOrderSecond[0].innerHTML = price;
    standardPrice[0].innerHTML = standard;
    totalVolum[0].innerHTML = volum;
    goodsMade[0].innerHTML = info;
    contentElem[0].innerHTML = content;
}

if(user == "admin"){
    deletButton[0].style.display = "block";
}

function deletButtonBox(){
    deletButton.addEventListener('click', function(){
        const paramId = getParameter("goodsId")
        for (let index = 0; index < 1; index++) {
            alert("상품이 삭제되었습니다.");
            location.href="goodsDelete?goodsId="+paramId;
        }
    })
}

dataInput(goodsData);
isGoods();
deletButtonBox();