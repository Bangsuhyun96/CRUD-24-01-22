<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/view/common/header.jsp"%>
<title>강의 등록</title>
</head>
<body class="container">
<div class="py-5 text-container">
    <h2 class="text-center">강의 등록</h2>
</div>
<div style="display: flex; justify-content: space-between">
    <h4 class="mb-3">강의 입력</h4>
    <form action="/curriculum" method="get">
        <button type="submit" class="btn btn-primary">목록</button>
    </form>
</div>

<form action="/curriculum/insert" method="post" enctype="application/json">
    <div>
        <label>강의번호</label>
        <input type="text" id="curriculumId" name="curriculumId" class="form-control" placeholder="강의번호를 입력하세요.">
    </div>
    <div>
        <label>강의명</label>
        <input type="text" id="curriculumName" name="curriculumName" class="form-control" placeholder="강의명을 입력하세요.">
    </div>
    <div>
        <label>강의내용</label>
        <input type="text" id="curriculumContent" name="curriculumContent" class="form-control" placeholder="강의내용을 입력하세요.">
    </div>
    <div>
        <label>강의년도</label>
        <input type="text" id="curriculumYear" name="curriculumYear" class="form-control" placeholder="강의년도를 입력하세요.">
    </div>
    <div>
        <label>강의주차</label>
        <input type="text" id="lectureWeek" name="lectureWeek" class="form-control" placeholder="강의주차를 입력하세요.">
    </div>
    <div>
        <label>강의시작일</label>
        <input type="text" id="startDate" name="startDate" class="form-control" placeholder="강의시작일을 입력하세요.">
    </div>
    <div>
        <label>강의종료일</label>
        <input type="text" id="endDate" name="endDate" class="form-control" placeholder="강의종료일을 입력하세요.">
    </div>
</form>
<hr class="my-4">
<div class="row">
    <div class="col">
        <button class="btn w-100 btn-primary btn-lg" type="submit" id="insert">강의 등록</button>
    </div>
    <div class="col">
        <button class="btn w-100 btn-secondary btn-lg" type="submit" id="cancel">취소</button>
    </div>
</div>
</body>
<script src="<%=request.getContextPath()%>/resources/js/curriculum.js"></script>
</html>
