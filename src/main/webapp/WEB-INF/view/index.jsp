<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/view/common/header.jsp"%>
<link href="<%=request.getContextPath()%>/resources/css/main.css" rel="stylesheet">
<title>강의 정보</title>
</head>
<body>
<div class="container">
    <div class="py-5 text-container">
        <h2 class="text-center">강의 목록</h2>
    </div>
    <div class="row">
        <div class="col">
            <form action="/curriculum/insert" method="get">
                <button class="btn btn-primary float-end" type="submit">
                    강의 등록
                </button>
            </form>
        </div>
    </div>
    <hr class="my-4">
    <div class="">
        <table class="table">
            <thead>
                <tr>
                    <th>강의명</th>
                    <th>강의내용</th>
                    <th>과정년도</th>
                    <th>강의주차</th>
                    <th>시작일자</th>
                    <th>종료일자</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="v" items="${item}">
                <tr>
<%--                    <td><a href="/curriculum">자바(JAVA) S/W 개발자 과정</a></td>--%>
<%--                    <td>개발자로의 취업을 준비하는 분들이 알아야 하는 필수 지식과 기술을 이론수업과 프로젝트 실습을 통해 습득하는 소프트웨어 개발자 양성 과정 입니다.</td>--%>
<%--                    <td>2024</td>--%>
<%--                    <td>15</td>--%>
<%--                    <td>24-01-28</td>--%>
<%--                    <td>24-02-20</td>--%>
                        <td><a href="/curriculum/${v.curriculumId}">${v.curriculumName}</a></td>
                        <td>${v.curriculumContent}</td>
                        <td>${v.curriculumYear}</td>
                        <td>${v.lectureWeek}</td>
                        <td>${v.startDate}</td>
                        <td>${v.endDate}</td>
                    </c:forEach>
                </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
