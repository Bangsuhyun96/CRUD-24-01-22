let updateBtn = document.querySelector("#update");
let deleteBtn = document.querySelector("#delete");
let cancelBtn = document.querySelector("#cancel");
updateBtn.addEventListener("click", function (){
    let curriculumId = document.getElementById('curriculumId').value;
    let curriculumName = document.getElementById('curriculumName').value;
    let curriculumContent = document.getElementById('curriculumContent').value;
    let curriculumYear = document.getElementById('curriculumYear').value;
    let lectureWeek = document.getElementById('lectureWeek').value;
    let startDate = document.getElementById('startDate').value;
    let endDate = document.getElementById('endDate').value;
    startDate = new Date(startDate);
    endDate = new Date(endDate);
    $.ajax({
        url: '/curriculum/update',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({
            curriculumId: curriculumId,
            curriculumName: curriculumName,
            curriculumContent: curriculumContent,
            curriculumYear: curriculumYear,
            lectureWeek: lectureWeek,
            startDate: startDate.toISOString(),
            endDate: endDate.toISOString()
        }),
        success: function (data){
            alert('수정되었습니다.');
            window.location.href='/';
        },
        error: function (xhr, status, error){
            console.log(curriculumId);
            console.log(curriculumName);
            console.log(curriculumContent);
            console.log(curriculumYear);
            console.log(lectureWeek);
            console.log(startDate);
            console.log(endDate);
            alert('error');
        }
    })
});

deleteBtn.addEventListener("click", function (){
    alert("삭제되었습니다.");
});
cancelBtn.addEventListener("click", function (){
    window.location.href='/';
})