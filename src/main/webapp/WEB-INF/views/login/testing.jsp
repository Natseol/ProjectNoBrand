<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        회원가입 &gt; 정보입력, 믿고 사는 즐거움 SSG.COM</title>
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/ssg_layout.css?v=20231101">
<link rel="stylesheet" type="text/css" href="//sui.ssgcdn.com/ui/ssg/css/mem.css?v=20231101">
</head><body>
<div id="container" class="cmmyssg_wrap">

<div id="content" class="cmem_ct_join">
    <div class="cmem_header">
        <div class="cmem_header_tit">
            <h2>신세계포인트 통합회원 가입</h2>
        </div>
    </div>

    <form id="joinForm" method="POST">
        <input type="hidden" name="selfCertTokenId" value="4aabb9b079df11ee99fb8030e02dff00">
        
        

        <div class="cmem_cont">
            <div class="cmem_sec">
                <div class="cmem_subtit">
                    <h3>회원정보</h3>
                </div>
                <p class="blind">* 표시는 필수입력 항목 이오니 반드시 입력해 주세요.</p>
                <div class="cmem_sec_cont">
                    <dl class="cmem_dl" role="presentation">
                        <dt class="cmem_dt">
                    <span class="cmem_dt_tit cmem_rq_tit">
                        <span class="star" aria-hidden="true">*</span>
                        <label for="mem_id"><span class="blind">필수입력</span>아이디</label>
                    </span>
                        </dt>
                        <dd class="cmem_dd">
                                    <input type="hidden" id="isDuplicateMbrLoginId">
                                    <div class="cmem_inpgrp ty_id">
                                        <div class="cmem_txt" id="idIpt">
                                                
                                            
                                                
                                            
                                                <input type="text" placeholder="영어 또는 숫자로 6~20자리로 입력해주세요." class="translated" id="mbrLoginId" name="mbrDto.mbrLoginId" maxlength="20">
                                            
                                        </div>
                                        <button type="button" class="cmem_btn cmem_btn_gray" id="checkDuplicateLoginIdBtn">
                                            <span>중복확인</span>
                                        </button>
                                        <span class="cmem_noti" aria-live="polite">
                                            <em class="usable_value"><p id="id_msg"></p></em>
                                        </span>
                                    </div>
                                
                            
                        </dd>
                    </dl>
                    <dl class="cmem_dl" role="presentation">
                        <dt class="cmem_dt">
                <span class="cmem_dt_tit cmem_rq_tit">
                    <span class="star" aria-hidden="true">*</span>
                    <label for="pwd"><span class="blind">필수입력</span>비밀번호</label>
                </span>
                        </dt>
                        <dd class="cmem_dd">
                            <div class="cmem_inpgrp ty_pw">
                                <div class="cmem_txt">
                                    <input type="password" placeholder="영문, 숫자 조합 8~20자리로 입력해주세요." id="pwd" name="mbrDto.pwd" class="translated" maxlength="20"><span class="trans_placeholder blind" data-default-txt="영문, 숫자 조합 8~20자리로 입력해주세요.">영문, 숫자 조합 8~20자리로 입력해주세요.</span>
                                </div>
                            </div>
                        </dd>
                    </dl>
                    <dl class="cmem_dl" role="presentation">
                        <dt class="cmem_dt">
                    <span class="cmem_dt_tit cmem_rq_tit">
                        <span class="star" aria-hidden="true">*</span>
                        <label for="pwd2"><span class="blind">필수입력</span>비밀번호 확인</label>
                    </span>
                        </dt>
                        <dd class="cmem_dd">
                            <div class="cmem_inpgrp ty_pw">
                                <div class="cmem_txt">
                                    <input type="password" placeholder="입력하신 비밀번호를 한 번 더 입력해주세요." id="pwd2" class="translated" maxlength="20"><span class="trans_placeholder blind" data-default-txt="입력하신 비밀번호를 한 번 더 입력해주세요.">입력하신 비밀번호를 한 번 더 입력해주세요.</span>
                                </div>
                            </div>
                        </dd>
                    </dl>
                    <dl class="cmem_dl" role="presentation">
                        <dt class="cmem_dt">
                    <span class="cmem_dt_tit cmem_rq_tit">
                        <span class="star" aria-hidden="true">*</span>
                        <label for="mem_name"><span class="blind">필수입력</span>이름</label>
                    </span>
                        </dt>
                        <dd class="cmem_dd">
                            <span class="cmem_dd_cont">이름을 입력해주세요</span>
                        </dd>
                    </dl>

                    <dl class="cmem_dl" role="presentation">
                        <dt class="cmem_dt">
                <span class="cmem_dt_tit cmem_rq_tit">
                    <span class="star" aria-hidden="true">*</span>
                    <label for="zipcd"><span class="blind">필수입력</span>주소</label>
                </span>
                        </dt>
                        <dd class="cmem_dd">
                            <div class="cmem_inpgrp">
                                <div class="cmem_txt">
                                    <input type="text" title="우편번호" id="zipcd" name="mbrNshpploc[0].zipcd">
                                </div>
                                <button type="button" class="cmem_btn cmem_btn_gray"><span>우편번호 찾기</span></button>
                            </div>
                            <div class="cmem_user_addr" id="addr_info"></div>
                        </dd>
                    </dl>

                    
                    <dl class="cmem_dl" role="presentation">
                        <dt class="cmem_dt">
                <span class="cmem_dt_tit cmem_rq_tit">
                    <span class="star" aria-hidden="true">*</span>
                    <label for="mem_hpno"><span class="blind">필수입력</span>휴대폰번호</label>
                </span>
                        </dt>
                        <dd class="cmem_dd">
                            
                            
                                <span class="cmem_dd_cont">010-8277-0267</span>
                            

                            
                            
                        </dd>
                    </dl>
                    <dl class="cmem_dl" role="presentation">
                        <dt class="cmem_dt">
                            <span class="cmem_dt_tit cmem_rq_tit">
                                <span class="star">*</span>
                                <label for="email">이메일주소</label>
                            </span>
                        </dt>
                        <dd class="cmem_dd">
                            <div class="cmem_inpgrp ty_id">
                                <div class="cmem_txt">
                                    <input type="text" id="email" placeholder="자주 사용하시는 이메일 주소를 입력해주세요." class="translated" name="mbrDto.email" maxlength="50"><span class="trans_placeholder blind" data-default-txt="자주 사용하시는 이메일 주소를 입력해주세요.">자주 사용하시는 이메일 주소를 입력해주세요.</span>
                                </div>
                            </div>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="cmem_sec">
                <div class="cmem_subtit">
                    <h3>마케팅 정보 수신 동의</h3>
                </div>

                
                
                    <div class="cmem_sec_cont">
                        <div class="cmem_terms ty_left">
                            <div class="cmem_term_tit">
                                <h4>신세계포인트</h4>
                            </div>
                            <div class="cmem_term_box">
                                <span class="cmem_chk"><input type="checkbox" id="chkAgree10" class="checkbox" data-type="agree10" value="10" name="mbrSvcAgreeTypeCd"><label for="chkAgree10"><em>(선택)</em> 서비스·이벤트정보 제공 및 분석을 위한 개인정보 수집 및 이용 동의</label></span>
                                <button type="button" class="cmem_btn cmem_btn_gray" title="새창열림" onclick="viewPolicy('signup_terms03')"><span>내용보기</span></button>
                            </div>
                            <div class="cmem_term_box">
                                <span class="cmem_chk"><input type="checkbox" id="chkAgree20" class="checkbox" data-type="agree10" value="20" name="mbrSvcAgreeTypeCd"><label for="chkAgree20"><em>(선택)</em> 선택 정보 이마트/신세계백화점 공동 개인정보 수집 및 이용 동의</label></span>
                                <button type="button" class="cmem_btn cmem_btn_gray" title="새창열림" onclick="viewPolicy('signup_terms04')"><span>내용보기</span></button>
                            </div>

                            <ul class="cmem_termlst" id="agree10">
                                <li>
                                    <span class="cmem_chk"><input type="checkbox" id="mail" name="infoRcvMediaCd" value="10"><label for="mail">이메일</label></span>
                                </li>
                                <li>
                                    <span class="cmem_chk"><input type="checkbox" id="sms" name="infoRcvMediaCd" value="20"><label for="sms">문자</label></span>
                                </li>
                                <li>
                                    <span class="cmem_chk"><input type="checkbox" id="post" name="infoRcvMediaCd" value="30"><label for="post">우편물</label></span>
                                </li>
                                <li>
                                    <span class="cmem_chk"><input type="checkbox" id="tel" name="infoRcvMediaCd" value="40"><label for="tel">텔레마케팅</label></span>
                                </li>
                            </ul>
                            <span class="cmem_noti">
                                <em>마케팅 정보 수신 동의를 하시면 신세계포인트 서비스 및 이벤트 정보를 받으실 수 있습니다.</em>
                            </span>
                        </div>
                    </div>
                

                
                <div class="cmem_sec_cont">
                    <div class="cmem_terms ty_left">
                        <div class="cmem_term_tit">
                            <h4>SSG.COM</h4>
                        </div>
                        <div class="cmem_term_box">
                            <span class="cmem_chk"><input type="checkbox" id="ssgInfoRcvAgree" data-type="agree40019" name="ssgInfoRcvAgreeDto.mbrSvcAgreeTypeCd" value="10"><label for="ssgInfoRcvAgree"><em>(선택)</em> 마케팅 정보 제공을 위한 개인정보 수집 및 이용 동의</label></span>
                            <button type="button" class="cmem_btn cmem_btn_gray" title="새창열림">
                                <span>내용보기</span>
                            </button>
                        </div>
                        <ul class="cmem_termlst" id="agree40019">
                            <li>
                                <span class="cmem_chk"><input type="checkbox" id="emailRcvYn" name="ssgInfoRcvAgreeDto.emailRcvYn" value="Y">
                                    <label for="emailRcvYn">이메일</label></span>
                            </li>
                            <li>
                                <span class="cmem_chk"><input type="checkbox" id="smsRcvYn" name="ssgInfoRcvAgreeDto.smsRcvYn" value="Y">
                                    <label for="smsRcvYn">문자</label></span>
                            </li>
                        </ul>
                        <span class="cmem_noti">
                        <em>마케팅 정보 수신 동의를 하시면 SSG.COM 상품 · 서비스 및 이벤트 정보를 받으실 수 있습니다.</em>
                        </span>
                    </div>
                </div>
                <span class="cmem_noti">
                    <em class="noti_dot">선택항목에 동의하지 않더라도 SSG.COM회원가입 및 기본 서비스를 이용하실 수 있습니다.</em>
                </span>
            </div>
            <div class="cmem_btnarea" data-reactingv2-key="00198_000000750|t00000|1">
                <button type="button" class="cmem_btn cmem_btn_ornge" id="btnSubmit">
                    <span>가입하기</span>
                </button>
            </div>
        </div>
    </form>
</div>
</div></body></html>