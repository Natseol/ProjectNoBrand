<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/buy.css" rel="stylesheet" type="text/css">
<title>구매</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page='/WEB-INF/views/toppage.jsp' />
	<!-- 여기부터 시작 -->
		<div id="order-root">
			<div class="main-order">
<<<<<<< Upstream, based on develop
				<div class="buy">
					<div class="title-content">결제하기</div>
					<div class="user-info">
						<div class="user-info-middle-font">받는 분 정보</div>
						<div class="user-info-top">
							<div class="user-info-top-delivery-location">배송지 정보</div>
							<div class="user-info-all">
								<div class="user-info-name"></div>
								<div class="user-info-address"></div>
							</div>
							<div class="delivery-get-location">
								<div class="content-text">쓱배송 수령위치</div>
								<div class="select-location">
									<li><label for="Q1"><input type="radio" name="Q1" value="문 앞에 놓아주세요"></label></li>
									<li><label for="Q2"><input type="radio" name="Q2" value="경비실에 맡겨주세요"></label></li>
									<li><label for="Q3"><input type="radio" name="Q3" value="직접입력"></label></li>
									<input class="user-input-where" type="text">
								</div>
							</div>
							<div class="delivery-order">
								<div class="content-text">배송 시 요청사항</div>
								<input class="user-input-want" type="text">
							</div>
						</div>
						<div class="user-email">
							<div class="user-info-name"></div>
							<div>/</div>
							<div class="user-info-email"></div>
						</div>
					</div>
				</div>
				<div class="ordered-goods order-text-font">
					<div class="title-content">
						<div>주문상품:</div>
						<div id="goods-count"></div>
						<div>개</div>
					</div>
					<div class="goods-list-visible"></div>
					<div class="goods-list-hidden"></div>
				</div>
				<div class="how-buy">
					<div class="title-content">결제방법</div>
					<div class="card"></div>
					<div class="basic-card">
						<div class="card-check">
							<li><input type="radio">일반결제</li>
						</div>
					</div>
				</div>
				<div class="buy-btn">
					<button class="total-price"></button>
				</div>
=======
				<div class="buy"></div>
				<div class="ordered-goods"></div>
				<div class="">
			</div>
>>>>>>> 00f4c32 tag:regist exception
			</div>
		</div>
		<script src="resources/scripts/buy.js"></script>
	<!-- 여기부터 끝 -->
	<jsp:include page='/WEB-INF/views/bottompage.jsp' />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>