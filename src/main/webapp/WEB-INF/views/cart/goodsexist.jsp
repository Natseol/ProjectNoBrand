<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript">
	var deliverygoods = 0;
	var total = 0;
	var delivery = 0;
	var price = 5480;
</script>
<link href="resources/css/goodsexist.css" rel="stylesheet" type="text/css">
	<div id="root-goods">
		<div class="left-box">
			<div class="list-box">
				<div class="goods-select-box">
					<div class="select-all-delete">
						<div class="check-box font-select-delete">
							<input type="checkbox" id="check1" >
							 <label for="check1"></label>
							 전체선택
						
						</div>
						<div class="set-delete">
							<div class="delete-sold-out font-select-delete">품절상품삭제</div>
							<div class="font-line font-select-delete">|</div>
							<div class="delete-select font-select-delete">선택삭제</div>
						</div>	
					</div>
					<div class="line-bold"></div>
					<div class="delivery-goods-box">
						<div class="delivery-goods">
							<div class="delivery-position">
								<div class="delivery-script font-delivery">
									<input type="checkbox">
										새벽배송/쓱배송 상품:&nbsp;
								</div>
								<div id="goods" class="goods-count font-delivery">
									<script type="text/javascript">
											document.getElementById("goods").innerHTML = deliverygoods;
									</script>
								</div>
								<div class="delivery-script font-delivery">개</div>
							</div>
							<div class="list-open-close">
								<div class="close-img">
									<img class="ico-arrow" alt="" src="resources/images/ico_arrow.png">
								</div>
								<div>
									<img class="delivery-banner" alt="" src="resources/images/deliverybanner.png">
								</div>
								<div class="goods-list-box">
									<div class="goods-list">
										<div class="goods-box">
											<div class="img-box">
												<img class="goods-img" alt="" src="resources/images/1000014798997_i1_290.jpg">
												<input class="img-check" type="checkbox">
											</div>
											<div class="goods-info">
												<div class="mart-name">이마트</div>
												<div class="brand-name">노브랜드</div>
												<div class="goods-name">[노브랜드] 도시락 김 100g (5g*20)</div>
											</div>
											<div class="goods-price">
												<div class="goods-count-box">
													<div class="counter">
														<input class="minus" type="button"/>
														<div id="result" class="count-position">1</div>
														<input class="plus" type="button"/>
													</div>
													<div class="cost-position">
														<div id="cost"">
															<script type="text/javascript">
																document.getElementById("cost").innerHTML = price;
															</script>
														</div>
														<div class="font-goods-price">원</div>
													</div>
												</div>
											</div>
											<div class="delivery">
												<div class="delivery-text">
													<ul>
														<li class="font-delivery-text">정기배송 가능
														<li class="left-arrow-position"> 청구할인 <img class="left-arrow" alt="" src="resources/images/ico_arrow2.png">
													</ul>
												</div>
											</div>
											<div class="keep-delete">
												<button class="keep">계속담아두기</button>
												<div class="delete-img-box">
													<div class="delete-img">
														<img class="heart-img" alt="" src="resources/images/heart.svg">
														<div class="font-center">|</div>
														<img class="trashcan" alt="" src="resources/images/trashcan.png">
													</div>
												</div>
											</div>
										</div>
										<div class="goods-box">
											<div class="img-box">
												<img class="goods-img" alt="" src="resources/images/1000014798997_i1_290.jpg">
												<input class="img-check" type="checkbox">
											</div>
											<div class="goods-info">
												<div class="mart-name">이마트</div>
												<div class="brand-name">노브랜드</div>
												<div class="goods-name">[노브랜드] 도시락 김 100g (5g*20)</div>
											</div>
											<div class="goods-price">
												<div class="goods-count-box">
													<div class="counter">
														<input class="minus" type="button"/>
														<div id="result" class="count-position">1</div>
														<input class="plus" type="button"/>
													</div>
													<div class="cost-position">
														<div id="cost"">
															<script type="text/javascript">
																document.getElementById("cost").innerHTML = price;
															</script>
														</div>
														<div class="font-goods-price">원</div>
													</div>
												</div>
											</div>
											<div class="delivery">
												<div class="delivery-text">
													<ul>
														<li class="font-delivery-text">정기배송 가능
														<li class="left-arrow-position"> 청구할인 <img class="left-arrow" alt="" src="resources/images/ico_arrow2.png">
													</ul>
												</div>
											</div>
											<div class="keep-delete">
												<button class="keep">계속담아두기</button>
												<div class="delete-img-box">
													<div class="delete-img">
														<img class="heart-img" alt="" src="resources/images/heart.svg">
														<div class="font-center">|</div>
														<img class="trashcan" alt="" src="resources/images/trashcan.png">
													</div>
												</div>
											</div>
										</div>

										
										<div class="goods-box">
											<div class="img-box">
												<img class="goods-img" alt="" src="resources/images/1000014798997_i1_290.jpg">
												<input class="img-check" type="checkbox">
											</div>
											<div class="goods-info">
												<div class="mart-name">이마트</div>
												<div class="brand-name">노브랜드</div>
												<div class="goods-name">[노브랜드] 도시락 김 100g (5g*20)</div>
											</div>
											<div class="goods-price">
												<div class="goods-count-box">
													<div class="counter">
														<input class="minus" type="button"/>
														<div id="result" class="count-position">1</div>
														<input class="plus" type="button"/>
													</div>
													<div class="cost-position">
														<div id="cost"">
															<script type="text/javascript">
																document.getElementById("cost").innerHTML = price;
															</script>
														</div>
														<div class="font-goods-price">원</div>
													</div>
												</div>
											</div>
											<div class="delivery">
												<div class="delivery-text">
													<ul>
														<li class="font-delivery-text">정기배송 가능
														<li class="left-arrow-position"> 청구할인 <img class="left-arrow" alt="" src="resources/images/ico_arrow2.png">
													</ul>
												</div>
											</div>
											<div class="keep-delete">
												<button class="keep">계속담아두기</button>
												<div class="delete-img-box">
													<div class="delete-img">
														<img class="heart-img" alt="" src="resources/images/heart.svg">
														<div class="font-center">|</div>
														<img class="trashcan" alt="" src="resources/images/trashcan.png">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="total-banner-box">
										<div class="total-banner">
											<div class="total-box">
												<div id="total" class="font-total">
													<script type="text/javascript">
														document.getElementById("total").innerHTML = total;
													</script>
												</div>
												<div class="font-total">원+</div>
												<div class="font-total">배송비</div>
												<div id="delivery" class="font-total">
													<script type="text/javascript">
														document.getElementById("delivery").innerHTML = delivery;
													</script>
												</div>
												<div class="font-total">원=</div>
												<div id="result-cost" class="font-total">
													<script type="text/javascript">
														document.getElementById("result-cost").innerHTML = total+delivery;
													</script>
												</div>
												<div class="font-total-notbold">원(4만원이상 무료배송)</div>
											</div>
											<div class="delivery-save-box">
												<div class="delivery-save font-total">배송비SAVE 상품보기 <img class="arrow-size" alt="" src="resources/images/right_arrow.svg"> </div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="card-event">
								<div class="card-event-box">
									<div class="card-first">
										<img class="card-event-banner" alt="" src="resources/images/cardevent1.png">
									</div>
									<div class="card-seconnd">
										<img class="card-event-banner" alt="" src="resources/images/cardevent2.png">
									</div>
								</div>
							</div>
							<div class="cart-bottom">
								<div class="info">
									<div class="info-script-box">
										<div class="info-script">
											<div class="font-size-6">장바구니 상품 안내</div>
											<ul class="">
												<li><div class="font-size-6">장바구니에 담은 상품은 최대 150개까지 보관됩니다.</div>
												<li><div class="font-size-6">상품 우측의 '계속 담아두기'를 설정해 두시면 시간이 지나고 상품이 삭제되지 않습니다.</div>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/scripts/goodsevent.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
