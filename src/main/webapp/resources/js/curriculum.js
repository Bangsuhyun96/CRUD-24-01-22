
    let curriculuminsert = document.querySelector('#insert');
    let curriculumcancel = document.querySelector('#cancel');
    curriculuminsert.addEventListener("click", function (){
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
    url: '/curriculum/insert',
    type: 'post',
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
    console.log(curriculumId);
    console.log(curriculumName);
    console.log(curriculumContent);
    console.log(curriculumYear);
    console.log(lectureWeek);
    console.log(startDate);
    console.log(endDate);
    window.location.href = '/';
},
    error: function(xhr, status, error){
    alert('error!');
    console.log(curriculumId);
    console.log(curriculumName);
    console.log(curriculumContent);
    console.log(curriculumYear);
    console.log(lectureWeek);
    console.log(startDate);
    console.log(endDate);
}
})
});

    curriculumcancel.addEventListener("click", function (){
    window.location.href = '/';
});