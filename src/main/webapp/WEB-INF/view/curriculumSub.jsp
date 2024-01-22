<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/view/common/header.jsp"%>
<title>강의 조회</title>
</head>
<body class="container">
<div class="py-5 text-container">
    <h2 class="text-center">강의 조회 & 수정</h2>
</div>
<div style="display: flex; justify-content: space-between">
    <h4 class="mb-3">강의 조회</h4>
    <form action="/curriculum/${curriculumId}" method="post">
        <button type="submit" class="btn btn-danger" id="delete">강의 삭제</button>
    </form>
</div>
<form action="/curriculum/update" method="post" enctype="application/json">
    <div>
        <label>강의번호</label>
        <input type="text" id="curriculumId" name="curriculumId" class="form-control" value="${info.curriculumId}" placeholder="${info.curriculumId}" disabled>
    </div>
    <div>
        <label>강의명</label>
        <input type="text" id="curriculumName" name="curriculumName" class="form-control" value="${info.curriculumName}" placeholder="${info.curriculumName}">
    </div>
    <div>
        <label>강의내용</label>
        <input type="text" id="curriculumContent" name="curriculumContent" class="form-control" value="${info.curriculumContent}" placeholder="${info.curriculumContent}">
    </div>
    <div>
        <label>강의년도</label>
        <input type="text" id="curriculumYear" name="curriculumYear" class="form-control" value="${info.curriculumYear}" placeholder="${info.curriculumYear}">
    </div>
    <div>
        <label>강의주차</label>
        <input type="text" id="lectureWeek" name="lectureWeek" class="form-control" value="${info.lectureWeek}" placeholder="${info.lectureWeek}">
    </div>
    <div>
        <label>강의시작일</label>
        <input type="text" id="startDate" name="startDate" class="form-control" value="${info.startDate}" placeholder="${info.startDate}">
    </div>
    <div>
        <label>강의종료일</label>
        <input type="text" id="endDate" name="endDate" class="form-control" value="${info.endDate}" placeholder="${info.endDate}">
    </div>
</form>
<hr class="my-4">
<div class="row">
    <div class="col">
        <button class="btn w-100 btn-primary btn-lg" type="submit" id="update">수정하기</button>
    </div>
    <div class="col">
        <button class="btn w-100 btn-secondary btn-lg" type="submit" id="cancel">취소</button>
    </div>
</div>
</body>
<script src="<%=request.getContextPath()%>/resources/js/curriculumSub.js"></script>
</html>
