<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<link href="./resources/css/styles.css" rel="stylesheet" />
<meta charset="UTF-8">
        <title>이용안내</title>
        

<style>
   .bd-placeholder-img {
      font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
      #list_type1{
		border-collapse: collapse;
		border-color: #F2F2F2;
		background-color: #F2F2F2;
		margin-left: 350px;
		margin-top: 5px;
		margin-right: 350px;
	}

</style>
<jsp:include page="tos-side.jsp"/>
</head>
<body style="overflow-x: visible; width:1903px; overflow-y:scroll;">
<table class="table" style="width:70%; margin-left: 300px; margin-right: 10%;" align="center">
	<thead>
	<br><br>
	<tr><th colspan="5"><h3 class="mb-5 fw-bold" align="center">이용시간안내</h3></th></tr>
		<thead>
    <tr>
      <th scope="col" colspan="3">실별(기능별)</th>
      <th scope="col">평일</th>
      <th scope="col">토·일요일</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="4">공공도서관</th>
	  <td class="center" rowspan="2">자료실<br>(자료이용)</td>
      <td class="center">일반</td>
      <td class="center">09:00 ~ 22:00</td>
	  <td class="center" rowspan="2"><br>09:00 ~ 18:00</td>
    </tr>
    <tr>
      <td class="center">어린이</td>
      <td class="center">09:00 ~ 18:00</td> 
    </tr>
	<tr>
	  <td class="center" rowspan="2">열람실<br>(개인학습)</td>
      <td class="center">열람실</td>
      <td class="center" colspan="2">07:00 ~ 23:00</td>
    </tr>
    <tr>
      <td class="center">자료·열람통합</td>
      <td class="center">07:00 ~ 23:00</td> 
	  <td class="center">07:00 ~ 21:00</td> 
    </tr>
  </tbody>
</table>

<br><br>
<h3 class="mb-5 fw-bold" style ="width:70%; margin-left: 300px;" align="center" >도서관별 열람실 이용대상 및 이용절차</h3>

<table class="table" style="width:70%; margin-left: 300px;" align="center">
  <caption>
    ※ 정회원이란 : 도서관에 방문하여 대출회원에 가입하고 회원증을 발급받은 회원 <br/>
  	※ 준회원이란 : 홈페이지에서 ‘온라인’으로만 가입한 회원<br><br>
  도서관별 열람실 이용대상 및 이용절차의 구분, 대상, 이용방법의 정보를 제공합니다
  </caption>
  <colgroup>
  <col style="width:20%;" />
  <col style="width:30%;" />
  <col style="width:auto;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="col">대상</th>
      <td class="center">중학생 이상</td>
      <td class="center">중학생 이상, (도서관 정회원, 준회원)</td>
    </tr>
    <tr>
      <th scope="col">이용방법</th>
      <td class="center">자율 좌석제 운영</td>
      <td class="center">좌석 발권 시스템 이용</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 class="mb-5 fw-bold" style ="width:70%; margin-left: 300px;" align="center">대출회원증 종류</h3>
<table class="table" style ="width:70%; margin-left: 300px;" align="center">
  <caption>
  대출회원증 종류의 구분, 일반회원증, 스마트맵 회원증 등의 정보를 제공합니다
  </caption>
  <colgroup>
  <col style="width:10%;" />
  <col style="width:20%;" />
  <col style="width:auto;" />
  </colgroup>
  <thead>
    <tr>
      <th scope="col">구분</th>
      <th scope="col">일반회원증</th>
      <th scope="col">스마트앱 회원증</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">내용</th>
      <td class="center">바코드회원증</td>
      <td class="center">모바일 기기에서 '수원시 도서관' 앱 다운로드 후 사용</td>
    </tr>
  </tbody>
</table>
<h3 class="mb-5 fw-bold" style ="width:70%; margin-left: 300px;" align="center">회원증 신청시간 및 접수장소</h3>
<table class="table" style ="width:70%; margin-left: 300px;" align="center">
  <caption>
  회원증 신청시간 및 접수장소의 구분, 신청기간, 접수장소 등의 정보를 제공합니다
  </caption>
  <colgroup>
  <col style="width:20%;" />
  <col style="width:20%;" />
  <col style="width:20%;" />
  <col style="width:auto;" />
  </colgroup>
  <thead>
    <tr>
      <th scope="col">구분</th>
      <th scope="col">신청시간</th>
      <th scope="col">접수장소</th>
      <th scope="col">비고</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">평일</th>
      <td class="center">09:00 ~ 22:00</td>
      <td rowspan="2" class="center"><br>각 도서관 자료실/안내데스크</td>
      <td rowspan="2"><ul>
          <li>신규 : 당일대출가능</li>
          <li>재발급 : 3일 후 대출가능</li>
        </ul></td>
    </tr>
    <tr>
      <th scope="row">토, 일요일</th>
      <td class="center">09:00 ~ 18:00</td>
    </tr>
  </tbody>
</table>


<br><br>
<h3 class="mb-5 fw-bold" style ="width:70%; margin-left: 300px;" align="center" >주요대출규정</h3>

<table class="table" style ="width:70%; margin-left: 300px;" align="center">
 
  <colgroup>
  <col style="width:20%;" />
  <col style="width:30%;" />
  <col style="width:auto;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="col">대출 책 수 및 기간 연장</th>
      <td class="center">회원</td>
      <td class="center"><span class="blue bold">1인당 10권</span>이며, <span class="blue bold">대출기간은 14일</span>입니다.</td>
    </tr>
    <tr>
      <th scope="col">대출 중인 도서 반납 연장</th>
      <td class="center">연장 신청 기한</td>
      <td class="center"><span class="bold">반납예정일 7일전</span>부터</td>
    </tr>
    <tr>
      <th scope="col">연장 불가</th>
      <td class="center">연체 중인 경우, 예약 자료인 경우</td>
      <td class="center"></td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 class="mb-5 fw-bold" style ="width:70%; margin-left: 300px;" align="center" >특별회원</h3>

<table class="table" style ="width:70%; margin-left: 300px;" align="center">
 
  <colgroup>
  <col style="width:20%;" />
  <col style="width:30%;" />
  <col style="width:auto;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="col">장애인 회원제</th>
      <td class="center">회원자격</td>
      <td class="center">수원시 관내 등록 장애인</td>
      </tr>
      <tr>
      <th scope="col"></th>
      <td class="center">혜택</td>
      <td class="center">대출 권수 확대 ( 7권 → 10권 )<br/>
      					 대출기한 확대 ( 14일 → 28일)
      </td>
      </tr>
      <tr>
      <th scope="col"></th>
      <td class="center">가입시 준비물</td>
      <td class="center">장애인 등록증</td>
    </tr>
    <tr>
      <th scope="col">다둥이 회원제</th>
      <td class="center">회원자격</td>
      <td class="center">세자녀 이상의 가족(부모와 자녀)</td>
    </tr>
    <tr>
    <th scope="col"></th>  
      <td class="center">혜택</td>
      <td class="center">대출권수 확대 ( 7권 → 10권 )</td>
    </tr>
    <tr>
    <th scope="col"></th>  
      <td class="center">가입시 준비물</td>
      <td class="center">셋째이상 자녀임을 확인할 수 있는 서류 (등본 및 건강보험증 등)</td>
    </tr>
    
  </tbody>
</table>

<br><br>


</body>
</html>